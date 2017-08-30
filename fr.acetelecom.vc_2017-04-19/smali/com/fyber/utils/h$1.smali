.class final Lcom/fyber/utils/h$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/utils/h;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/fyber/utils/h;


# direct methods
.method constructor <init>(Lcom/fyber/utils/h;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/utils/h$1;->b:Lcom/fyber/utils/h;

    iput-object p3, p0, Lcom/fyber/utils/h$1;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/utils/h$1;->b:Lcom/fyber/utils/h;

    iget-object v1, p0, Lcom/fyber/utils/h$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/fyber/utils/h;->a(Lcom/fyber/utils/h;Landroid/content/Context;)V

    return-void
.end method
