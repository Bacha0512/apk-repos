.class public Lcom/digits/sdk/android/PhoneNumberActivity;
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

    new-instance v0, Lcom/digits/sdk/android/bv;

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/ac;->o()Lcom/digits/sdk/android/ar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/digits/sdk/android/bv;-><init>(Lcom/digits/sdk/android/ar;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/PhoneNumberActivity;->a:Lcom/digits/sdk/android/af;

    check-cast v0, Lcom/digits/sdk/android/bv;

    invoke-virtual {v0}, Lcom/digits/sdk/android/bv;->d()V

    invoke-super {p0}, Lcom/digits/sdk/android/ae;->onBackPressed()V

    return-void
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
