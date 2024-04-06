// Import PrismaClient
import { PrismaClient } from '@prisma/client';

// Initialize PrismaClient
const prisma = new PrismaClient();

export default async function handler(req, res) {
    try {
        // Use PrismaClient to interact with the database
        const leads = await prisma.leads.findMany(); // Replace yourModelName with the actual name of your model
        res.status(200).json(leads);
    } catch (error) {
        console.error('Error fetching leads:', error);
        res.status(500).json({ error: 'Internal Server Error' });
    } finally {
        // Disconnect PrismaClient after query execution
        await prisma.$disconnect();
    }
}
