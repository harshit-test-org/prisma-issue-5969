import { PrismaClient } from "@prisma/client";

async function main() {
  const prisma = new PrismaClient();

  const data = await prisma.site.findMany({
    distinct: ["origin"],
    where: {
      snapshotId: 4,
    },
    select: {
      id: true,
      link: true,
    },
  });

  console.log(data);
  prisma.$disconnect();
}

main();
