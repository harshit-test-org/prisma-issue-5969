## Introduction

This repository contains reproduction for https://github.com/prisma/prisma/issues/5969

## Version Information

```
Environment variables loaded from prisma\.env
prisma               : 2.19.0-dev.21
@prisma/client       : 2.19.0-dev.21
Current platform     : windows
Query Engine         : query-engine 8fab238be80098a0cb0bb
d1f656542b3b3e8b9a6 (at node_modules\@prisma\engines\quer
y-engine-windows.exe)
Migration Engine     : migration-engine-cli 8fab238be8009
8a0cb0bbd1f656542b3b3e8b9a6 (at node_modules\@prisma\engi
nes\migration-engine-windows.exe)
Introspection Engine : introspection-core 8fab238be80098a
0cb0bbd1f656542b3b3e8b9a6 (at node_modules\@prisma\engine
s\introspection-engine-windows.exe)
Format Binary        : prisma-fmt 8fab238be80098a0cb0bbd1
f656542b3b3e8b9a6 (at node_modules\@prisma\engines\prisma
-fmt-windows.exe)
Studio               : 0.357.0
Preview Features     : createMany
```


## Steps

1. Clone the repository and install the deps using `yarn`
2. Change credentials in `prisma/.env` and run migrate using `yarn prisma migrate dev --preview-feature`
3. Restore `data.sql` dump. (Exported via pg_dump 13)
4. Run `yarn start` to reproduce
