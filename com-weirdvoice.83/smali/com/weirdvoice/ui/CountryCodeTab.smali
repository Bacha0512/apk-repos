.class public Lcom/weirdvoice/ui/CountryCodeTab;
.super Landroid/app/TabActivity;
.source "CountryCodeTab.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v7, 0x7f030046

    invoke-virtual {p0, v7}, Lcom/weirdvoice/ui/CountryCodeTab;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/weirdvoice/ui/CountryCodeTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v6

    .line 38
    .local v6, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/CountryCodeTab;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 39
    .local v3, "iFrom":Landroid/content/Intent;
    const-string v7, "from"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "from":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v7, 0x1a

    if-lt v2, v7, :cond_0

    .line 51
    const-string v7, "A"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 52
    return-void

    .line 42
    :cond_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-class v8, Lcom/weirdvoice/ui/CountryCode;

    invoke-virtual {v7, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    .line 43
    .local v4, "intent":Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v2, 0x41

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "firstLetter":Ljava/lang/String;
    const-string v7, "letter"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    if-eqz v1, :cond_1

    .line 46
    const-string v7, "from"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    :cond_1
    invoke-virtual {v6, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 48
    .local v5, "spec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v6, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
