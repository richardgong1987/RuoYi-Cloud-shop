let menu = require('./mall-menu.json');

var parents = [];
for (let p of menu) {
    if (p.parent_id === 0) {
        var ps = {
            title: p.title,
            icon: p.icon,
            path: p.name,
            childrens: []
        };
        for (let pChild of menu) {
            if (pChild.parent_id == p.id) {
                ps.childrens.push({
                    title: pChild.title,
                    icon: pChild.icon,
                    path: pChild.name
                });
            }
        }
        parents.push(ps);
    }

}

var toml = "";
var  menuId=2000;
for (let {title,icon,path,childrens} of parents) {
    toml += `

#------------------------${title}(目录)---------------------------
['${title}']
menuId = ${menuId++}
icon = '${icon}'
path = '${path}'
    `;

    for(let c of childrens){
        toml += `
#------------------------${title}${c.title}(二级菜单)---------------------------
['${title}'.'${c.title}']
menuId = ${menuId++}
icon = '${c.icon}'
path = '${c.path}'

#-----------${title}${c.title} 按钮权限------------
['${title}'.'${c.title}'.'按钮权限'.'查询']
menuId = ${menuId++}
perms = 'query'

['${title}'.'${c.title}'.'按钮权限'.'添加']
menuId = ${menuId++}
perms = 'add'

['${title}'.'${c.title}'.'按钮权限'.'编辑']
menuId = ${menuId++}
perms = 'edit'

['${title}'.'${c.title}'.'按钮权限'.'删除']
menuId = ${menuId++}
perms = 'remove'

['${title}'.'${c.title}'.'按钮权限'.'导入']
menuId = ${menuId++}
perms = 'import'

['${title}'.'${c.title}'.'按钮权限'.'导出']
menuId = ${menuId++}
perms = 'export'

    `;

    }
}

const fs = require('fs-extra')

async function example(f, text) {
    await fs.outputFile(f, text);
}

example("./menu/gen-menu.toml", toml);
