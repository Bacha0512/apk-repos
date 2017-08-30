.class final Lcom/fyber/ads/videos/b$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/ads/videos/b$10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/b$10;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/b$10;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/videos/b$10$1;->a:Lcom/fyber/ads/videos/b$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/videos/b$10$1;->a:Lcom/fyber/ads/videos/b$10;

    iget-object v0, v0, Lcom/fyber/ads/videos/b$10;->a:Lcom/fyber/ads/videos/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/b;Z)Z

    return-void
.end method
