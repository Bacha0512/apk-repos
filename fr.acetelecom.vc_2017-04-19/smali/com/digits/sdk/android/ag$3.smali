.class Lcom/digits/sdk/android/ag$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/ag;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/an;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/digits/sdk/android/ag;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/ag;Lcom/digits/sdk/android/an;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/ag$3;->c:Lcom/digits/sdk/android/ag;

    iput-object p2, p0, Lcom/digits/sdk/android/ag$3;->a:Lcom/digits/sdk/android/an;

    iput-object p3, p0, Lcom/digits/sdk/android/ag$3;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/ag$3;->a:Lcom/digits/sdk/android/an;

    invoke-interface {v0}, Lcom/digits/sdk/android/an;->e()V

    iget-object v0, p0, Lcom/digits/sdk/android/ag$3;->a:Lcom/digits/sdk/android/an;

    iget-object v1, p0, Lcom/digits/sdk/android/ag$3;->b:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/digits/sdk/android/an;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
