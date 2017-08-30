.class public Lcom/digits/sdk/android/LoginCodeActionBarActivity;
.super Lcom/digits/sdk/android/ad;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/digits/sdk/android/ad;-><init>()V

    return-void
.end method


# virtual methods
.method e()Lcom/digits/sdk/android/af;
    .locals 2

    new-instance v0, Lcom/digits/sdk/android/br;

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/ac;->o()Lcom/digits/sdk/android/ar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/digits/sdk/android/br;-><init>(Lcom/digits/sdk/android/ar;)V

    return-object v0
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/digits/sdk/android/ad;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/digits/sdk/android/ad;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    invoke-super {p0}, Lcom/digits/sdk/android/ad;->onResume()V

    return-void
.end method
