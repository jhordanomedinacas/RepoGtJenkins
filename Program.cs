namespace mi_proyecto
{
    public class Pedido
    {
        public string ObtenerEstado()
        {
            return "EN CAMINO";
        }

        public string ObtenerMensaje()
        {
            return "Estado de pedido: EN CAMINO";
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            var pedido = new Pedido();
            Console.WriteLine(pedido.ObtenerMensaje());
        }
    }
}