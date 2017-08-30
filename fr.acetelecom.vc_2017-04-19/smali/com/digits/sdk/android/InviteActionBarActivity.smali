.class public Lcom/digits/sdk/android/InviteActionBarActivity;
.super Landroid/support/v7/app/ActionBarActivity;


# instance fields
.field a:Lcom/digits/sdk/android/bl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/InviteActionBarActivity;->a:Lcom/digits/sdk/android/bl;

    invoke-interface {v0}, Lcom/digits/sdk/android/bl;->b()V

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/digits/sdk/android/InviteActionBarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "THEME_RESOURCE_ID"

    sget v2, Lcom/digits/sdk/android/cb$h;->Theme_AppCompat_Light:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/InviteActionBarActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/digits/sdk/android/bm;

    invoke-virtual {p0}, Lcom/digits/sdk/android/InviteActionBarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/digits/sdk/android/bm;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/digits/sdk/android/InviteActionBarActivity;->a:Lcom/digits/sdk/android/bl;

    iget-object v0, p0, Lcom/digits/sdk/android/InviteActionBarActivity;->a:Lcom/digits/sdk/android/bl;

    invoke-interface {v0}, Lcom/digits/sdk/android/bl;->a()V

    return-void
.end method
