.class public Lcom/rami_bar/fun_call/activities/ActivityPush;
.super Landroid/app/Activity;
.source "ActivityPush.java"


# instance fields
.field private extras:Landroid/os/Bundle;

.field private tv_push_message:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getViewsID()V
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f100159

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityPush;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPush;->tv_push_message:Landroid/widget/TextView;

    .line 65
    return-void
.end method

.method private setDataToViews()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPush;->tv_push_message:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityPush;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "push"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method private setPushSound()V
    .locals 4

    .prologue
    .line 33
    const/4 v3, 0x2

    :try_start_0
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 34
    .local v1, "notification":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityPush;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 35
    .local v2, "r":Landroid/media/Ringtone;
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v1    # "notification":Landroid/net/Uri;
    .end local v2    # "r":Landroid/media/Ringtone;
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onClose(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityPush;->finish()V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f040039

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityPush;->setContentView(I)V

    .line 24
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityPush;->getViewsID()V

    .line 26
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityPush;->setDataToViews()V

    .line 29
    return-void
.end method

.method public onPushOpen(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rami_bar/fun_call/activities/ActivityMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "push"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityPush;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityPush;->startActivity(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityPush;->finish()V

    .line 50
    return-void
.end method
