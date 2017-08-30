.class public Lcom/digits/sdk/android/ConfirmationCodeActivity;
.super Lcom/digits/sdk/android/ae;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/digits/sdk/android/ae;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/digits/sdk/android/af;
    .locals 2

    new-instance v0, Lcom/digits/sdk/android/l;

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/ac;->o()Lcom/digits/sdk/android/ar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/digits/sdk/android/l;-><init>(Lcom/digits/sdk/android/ar;)V

    return-object v0
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/digits/sdk/android/ae;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/digits/sdk/android/ae;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    invoke-super {p0}, Lcom/digits/sdk/android/ae;->onResume()V

    return-void
.end method
