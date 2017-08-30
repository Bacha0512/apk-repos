.class Lcom/digits/sdk/android/bm$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/bm;->e()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/bm;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/bm$1;->a:Lcom/digits/sdk/android/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/bm$1;->a:Lcom/digits/sdk/android/bm;

    iget-object v1, p0, Lcom/digits/sdk/android/bm$1;->a:Lcom/digits/sdk/android/bm;

    iget-object v1, v1, Lcom/digits/sdk/android/bm;->i:Landroid/app/LoaderManager;

    iget-object v2, p0, Lcom/digits/sdk/android/bm$1;->a:Lcom/digits/sdk/android/bm;

    iget-object v2, v2, Lcom/digits/sdk/android/bm;->h:Landroid/app/LoaderManager$LoaderCallbacks;

    iget-object v3, p0, Lcom/digits/sdk/android/bm$1;->a:Lcom/digits/sdk/android/bm;

    iget-object v3, v3, Lcom/digits/sdk/android/bm;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/digits/sdk/android/bm;->a(Landroid/app/LoaderManager;Landroid/app/LoaderManager$LoaderCallbacks;Ljava/lang/String;)V

    return-void
.end method
