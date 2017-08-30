.class Lcom/digits/sdk/android/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/p;->b(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/p;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/p;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/p$2;->a:Lcom/digits/sdk/android/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/p$2;->a:Lcom/digits/sdk/android/p;

    invoke-static {v0}, Lcom/digits/sdk/android/p;->a(Lcom/digits/sdk/android/p;)Lcom/digits/sdk/android/ar;

    move-result-object v0

    new-instance v1, Lcom/digits/sdk/android/a/a;

    invoke-direct {v1}, Lcom/digits/sdk/android/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->a(Lcom/digits/sdk/android/a/a;)V

    iget-object v0, p0, Lcom/digits/sdk/android/p$2;->a:Lcom/digits/sdk/android/p;

    iget-object v0, v0, Lcom/digits/sdk/android/p;->a:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/digits/sdk/android/p$2;->a:Lcom/digits/sdk/android/p;

    iget-object v0, v0, Lcom/digits/sdk/android/p;->b:Lcom/digits/sdk/android/r;

    iget-object v1, p0, Lcom/digits/sdk/android/p$2;->a:Lcom/digits/sdk/android/p;

    iget-object v1, v1, Lcom/digits/sdk/android/p;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/digits/sdk/android/r;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/digits/sdk/android/p$2;->a:Lcom/digits/sdk/android/p;

    iget-object v0, v0, Lcom/digits/sdk/android/p;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
