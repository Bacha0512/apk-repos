.class final Lcom/fyber/c/d/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/c/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/c/d/d;


# direct methods
.method constructor <init>(Lcom/fyber/c/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/c/d/d$5;->a:Lcom/fyber/c/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/fyber/c/d/d$5;->a:Lcom/fyber/c/d/d;

    invoke-static {v0}, Lcom/fyber/c/d/d;->c(Lcom/fyber/c/d/d;)Z

    iget-object v0, p0, Lcom/fyber/c/d/d$5;->a:Lcom/fyber/c/d/d;

    invoke-static {v0}, Lcom/fyber/c/d/d;->d(Lcom/fyber/c/d/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/c/d/d$5;->a:Lcom/fyber/c/d/d;

    invoke-static {v0}, Lcom/fyber/c/d/d;->e(Lcom/fyber/c/d/d;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method
