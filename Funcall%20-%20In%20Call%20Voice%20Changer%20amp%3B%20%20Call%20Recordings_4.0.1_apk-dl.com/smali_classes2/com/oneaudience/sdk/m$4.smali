.class Lcom/oneaudience/sdk/m$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneaudience/sdk/m;->h()Lcom/oneaudience/sdk/m$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneaudience/sdk/m;


# direct methods
.method constructor <init>(Lcom/oneaudience/sdk/m;)V
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/m$4;->a:Lcom/oneaudience/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/oneaudience/sdk/m$4;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0}, Lcom/oneaudience/sdk/m;->e(Lcom/oneaudience/sdk/m;)Lcom/oneaudience/sdk/m$h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/m$4;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0}, Lcom/oneaudience/sdk/m;->e(Lcom/oneaudience/sdk/m;)Lcom/oneaudience/sdk/m$h;

    move-result-object v0

    iget-object v1, p0, Lcom/oneaudience/sdk/m$4;->a:Lcom/oneaudience/sdk/m;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneaudience/sdk/m$h;->a(Lcom/oneaudience/sdk/m;Z)V

    :cond_0
    return-void
.end method
