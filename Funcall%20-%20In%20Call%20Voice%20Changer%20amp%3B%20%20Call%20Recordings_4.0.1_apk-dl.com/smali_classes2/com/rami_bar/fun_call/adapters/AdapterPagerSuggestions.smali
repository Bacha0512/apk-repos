.class public Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "AdapterPagerSuggestions.java"


# instance fields
.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/Suggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rami_bar/fun_call/objects/receive/Suggestion;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 27
    iput-object p2, p0, Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;->mSuggestions:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFragmentPosition(Ljava/lang/String;)I
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Lcom/rami_bar/fun_call/objects/receive/Suggestion;

    invoke-direct {v0}, Lcom/rami_bar/fun_call/objects/receive/Suggestion;-><init>()V

    .line 87
    .local v0, "suggestion":Lcom/rami_bar/fun_call/objects/receive/Suggestion;
    iput-object p1, v0, Lcom/rami_bar/fun_call/objects/receive/Suggestion;->action:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 39
    iget-object v3, p0, Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rami_bar/fun_call/objects/receive/Suggestion;

    iget-object v2, v3, Lcom/rami_bar/fun_call/objects/receive/Suggestion;->action:Ljava/lang/String;

    .line 40
    .local v2, "s":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 66
    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentInfo;

    invoke-direct {v1}, Lcom/rami_bar/fun_call/activities/FragmentInfo;-><init>()V

    .line 69
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "suggestion"

    iget-object v3, p0, Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 71
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    return-object v1

    .line 40
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :sswitch_0
    const-string v4, "info"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "purchase"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "offerwall"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "share_sms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "daily_bonus"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "paypal_web"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "pubnative"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "recordings"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    .line 42
    :pswitch_0
    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentInfo;

    invoke-direct {v1}, Lcom/rami_bar/fun_call/activities/FragmentInfo;-><init>()V

    .line 43
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 45
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_1
    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-direct {v1}, Lcom/rami_bar/fun_call/activities/FragmentBilling;-><init>()V

    .line 46
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 48
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_2
    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentOffers;

    invoke-direct {v1}, Lcom/rami_bar/fun_call/activities/FragmentOffers;-><init>()V

    .line 49
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 51
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_3
    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentSms;

    invoke-direct {v1}, Lcom/rami_bar/fun_call/activities/FragmentSms;-><init>()V

    .line 52
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 54
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_4
    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;

    invoke-direct {v1}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;-><init>()V

    .line 55
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_1

    .line 57
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_5
    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentWeb;

    invoke-direct {v1}, Lcom/rami_bar/fun_call/activities/FragmentWeb;-><init>()V

    .line 58
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_1

    .line 60
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_6
    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentPubnative;

    invoke-direct {v1}, Lcom/rami_bar/fun_call/activities/FragmentPubnative;-><init>()V

    .line 61
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_1

    .line 63
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_7
    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    invoke-direct {v1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;-><init>()V

    .line 64
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_1

    .line 40
    :sswitch_data_0
    .sparse-switch
        -0x5e46cb07 -> :sswitch_3
        -0x82357f8 -> :sswitch_5
        0x3164ae -> :sswitch_0
        0x4c1aa79 -> :sswitch_4
        0x2bd740a2 -> :sswitch_7
        0x593f1154 -> :sswitch_6
        0x67e90501 -> :sswitch_1
        0x73f71e26 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/receive/Suggestion;

    iget-object v0, v0, Lcom/rami_bar/fun_call/objects/receive/Suggestion;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/Suggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rami_bar/fun_call/objects/receive/Suggestion;>;"
    iget-object v0, p0, Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    iget-object v0, p0, Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;->notifyDataSetChanged()V

    .line 34
    return-void
.end method
