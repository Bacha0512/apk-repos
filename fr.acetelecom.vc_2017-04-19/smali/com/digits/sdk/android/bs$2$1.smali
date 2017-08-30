.class Lcom/digits/sdk/android/bs$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/bs$2;->a(Lcom/twitter/sdk/android/core/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/bs$2;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/bs$2;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/bs$2$1;->a:Lcom/digits/sdk/android/bs$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/digits/sdk/android/bs$2$1;->a:Lcom/digits/sdk/android/bs$2;

    iget-object v0, v0, Lcom/digits/sdk/android/bs$2;->a:Lcom/digits/sdk/android/internal/InvertedStateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/InvertedStateButton;->g()V

    iget-object v0, p0, Lcom/digits/sdk/android/bs$2$1;->a:Lcom/digits/sdk/android/bs$2;

    iget-object v0, v0, Lcom/digits/sdk/android/bs$2;->b:Lcom/digits/sdk/android/bs;

    invoke-static {v0}, Lcom/digits/sdk/android/bs;->c(Lcom/digits/sdk/android/bs;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bs$2$1;->a:Lcom/digits/sdk/android/bs$2;

    iget-object v0, v0, Lcom/digits/sdk/android/bs$2;->b:Lcom/digits/sdk/android/bs;

    invoke-static {v0}, Lcom/digits/sdk/android/bs;->d(Lcom/digits/sdk/android/bs;)Lcom/digits/sdk/android/internal/InvertedStateButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/digits/sdk/android/internal/InvertedStateButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/digits/sdk/android/bs$2$1;->a:Lcom/digits/sdk/android/bs$2;

    iget-object v0, v0, Lcom/digits/sdk/android/bs$2;->b:Lcom/digits/sdk/android/bs;

    invoke-static {v0}, Lcom/digits/sdk/android/bs;->e(Lcom/digits/sdk/android/bs;)Lcom/digits/sdk/android/internal/InvertedStateButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/digits/sdk/android/internal/InvertedStateButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/digits/sdk/android/bs$2$1;->a:Lcom/digits/sdk/android/bs$2;

    iget-object v0, v0, Lcom/digits/sdk/android/bs$2;->b:Lcom/digits/sdk/android/bs;

    invoke-virtual {v0}, Lcom/digits/sdk/android/bs;->f()V

    return-void
.end method
