.class public Lcom/digits/sdk/android/ContactsActionBarActivity;
.super Landroid/support/v7/app/ActionBarActivity;


# instance fields
.field a:Lcom/digits/sdk/android/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/digits/sdk/android/ContactsActionBarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "THEME_RESOURCE_ID"

    sget v2, Lcom/digits/sdk/android/cb$h;->Theme_AppCompat_Light:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/ContactsActionBarActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/digits/sdk/android/p;

    invoke-direct {v0, p0}, Lcom/digits/sdk/android/p;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/digits/sdk/android/ContactsActionBarActivity;->a:Lcom/digits/sdk/android/p;

    iget-object v0, p0, Lcom/digits/sdk/android/ContactsActionBarActivity;->a:Lcom/digits/sdk/android/p;

    invoke-virtual {v0}, Lcom/digits/sdk/android/p;->a()V

    return-void
.end method
