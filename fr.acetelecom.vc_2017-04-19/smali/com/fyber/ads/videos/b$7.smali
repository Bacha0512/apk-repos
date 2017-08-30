.class final Lcom/fyber/ads/videos/b$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/ads/videos/b;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/b;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/videos/b$7;->a:Lcom/fyber/ads/videos/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/videos/b$7;->a:Lcom/fyber/ads/videos/b;

    sget-object v1, Lcom/fyber/ads/videos/c$a;->e:Lcom/fyber/ads/videos/c$a;

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/b;Lcom/fyber/ads/videos/c$a;)V

    iget-object v0, p0, Lcom/fyber/ads/videos/b$7;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->o(Lcom/fyber/ads/videos/b;)V

    iget-object v0, p0, Lcom/fyber/ads/videos/b$7;->a:Lcom/fyber/ads/videos/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/b;Z)Z

    return-void
.end method
