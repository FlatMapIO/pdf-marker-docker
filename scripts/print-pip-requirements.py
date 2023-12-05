import toml

# 读取pyproject.toml文件
with open('pyproject.toml', 'r') as f:
    data = toml.load(f)

# 获取依赖项
dependencies = data['tool']['poetry']['dependencies']


pip_install_items = [f'{k}=={v.replace("^", "")}' for k, v in dependencies.items()]


print(' '.join(pip_install_items))
