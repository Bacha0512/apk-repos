.class Lcom/digits/sdk/android/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/p;->a(Landroid/widget/Button;)V
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

    iput-object p1, p0, Lcom/digits/sdk/android/p$1;->a:Lcom/digits/sdk/android/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/p$1;->a:Lcom/digits/sdk/android/p;

    invoke-static {v0}, Lcom/digits/sdk/android/p;->a(Lcom/digits/sdk/android/p;)Lcom/digits/sdk/android/ar;

    move-result-object v0

    new-instance v1, Lcom/digits/sdk/android/a/b;

    invoke-direct {v1}, Lcom/digits/sdk/android/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->a(Lcom/digits/sdk/android/a/b;)V

    iget-object v0, p0, Lcom/digits/sdk/android/p$1;->a:Lcom/digits/sdk/android/p;

    iget-object v0, v0, Lcom/digits/sdk/android/p;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
