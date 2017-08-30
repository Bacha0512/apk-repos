.class public Lcom/weirdvoice/ui/prefs/PrefsFast;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "PrefsFast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;
    }
.end annotation


# instance fields
.field private globGsm:Landroid/widget/CheckBox;

.field private globIntegrate:Landroid/widget/CheckBox;

.field private globProfileAlways:Landroid/widget/RadioButton;

.field private globProfileNever:Landroid/widget/RadioButton;

.field private globProfileWifi:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    return-void
.end method

.method private applyPrefs()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 155
    iget-object v3, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globIntegrate:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 156
    .local v0, "integrate":Z
    iget-object v3, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globGsm:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 157
    .local v2, "useGsm":Z
    sget-object v1, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->UNKOWN:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    .line 158
    .local v1, "mode":Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;
    iget-object v3, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globProfileAlways:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    sget-object v1, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->ALWAYS:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    .line 167
    :cond_0
    :goto_0
    const-string v3, "integrate_with_native_dialer"

    invoke-static {p0, v3, v0}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 168
    const-string v3, "integrate_with_native_calllogs"

    invoke-static {p0, v3, v0}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 171
    sget-object v3, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->UNKOWN:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    if-eq v1, v3, :cond_1

    .line 173
    const-string v6, "use_3g_in"

    if-eqz v2, :cond_4

    sget-object v3, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->ALWAYS:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    if-ne v1, v3, :cond_4

    move v3, v4

    :goto_1
    invoke-static {p0, v6, v3}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 174
    const-string v3, "use_3g_out"

    invoke-static {p0, v3, v2}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 175
    const-string v6, "use_gprs_in"

    if-eqz v2, :cond_5

    sget-object v3, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->ALWAYS:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    if-ne v1, v3, :cond_5

    move v3, v4

    :goto_2
    invoke-static {p0, v6, v3}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 176
    const-string v3, "use_gprs_out"

    invoke-static {p0, v3, v2}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 177
    const-string v6, "use_edge_in"

    if-eqz v2, :cond_6

    sget-object v3, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->ALWAYS:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    if-ne v1, v3, :cond_6

    move v3, v4

    :goto_3
    invoke-static {p0, v6, v3}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 178
    const-string v3, "use_edge_out"

    invoke-static {p0, v3, v2}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 180
    const-string v6, "use_wifi_in"

    sget-object v3, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->NEVER:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    if-eq v1, v3, :cond_7

    move v3, v4

    :goto_4
    invoke-static {p0, v6, v3}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 181
    const-string v3, "use_wifi_out"

    invoke-static {p0, v3, v4}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 183
    const-string v6, "use_other_in"

    sget-object v3, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->NEVER:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    if-eq v1, v3, :cond_8

    move v3, v4

    :goto_5
    invoke-static {p0, v6, v3}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 184
    const-string v3, "use_other_out"

    invoke-static {p0, v3, v4}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 186
    const-string v3, "lock_wifi"

    sget-object v6, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->ALWAYS:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    if-ne v1, v6, :cond_9

    if-nez v2, :cond_9

    :goto_6
    invoke-static {p0, v3, v4}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 189
    :cond_1
    return-void

    .line 160
    :cond_2
    iget-object v3, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globProfileWifi:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    sget-object v1, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->WIFI:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    .line 162
    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globProfileNever:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    sget-object v1, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->NEVER:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    goto :goto_0

    :cond_4
    move v3, v5

    .line 173
    goto :goto_1

    :cond_5
    move v3, v5

    .line 175
    goto :goto_2

    :cond_6
    move v3, v5

    .line 177
    goto :goto_3

    :cond_7
    move v3, v5

    .line 180
    goto :goto_4

    :cond_8
    move v3, v5

    .line 183
    goto :goto_5

    :cond_9
    move v4, v5

    .line 186
    goto :goto_6
.end method

.method private setProfile(Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;)V
    .locals 4
    .param p1, "mode"    # Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    iget-object v3, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globProfileAlways:Landroid/widget/RadioButton;

    sget-object v0, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->ALWAYS:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 125
    iget-object v3, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globProfileWifi:Landroid/widget/RadioButton;

    sget-object v0, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->WIFI:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 126
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globProfileNever:Landroid/widget/RadioButton;

    sget-object v3, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->NEVER:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    if-ne p1, v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 127
    return-void

    :cond_0
    move v0, v2

    .line 124
    goto :goto_0

    :cond_1
    move v0, v2

    .line 125
    goto :goto_1

    :cond_2
    move v1, v2

    .line 126
    goto :goto_2
.end method

.method private updateFromPrefs()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 89
    iget-object v11, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globIntegrate:Landroid/widget/CheckBox;

    const-string v12, "integrate_with_native_dialer"

    invoke-static {p0, v12}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    const-string v11, "use_3g_in"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 91
    .local v5, "tgIn":Z
    const-string v11, "use_3g_out"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 92
    .local v6, "tgOut":Z
    const-string v11, "use_gprs_in"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 93
    .local v2, "gprsIn":Z
    const-string v11, "use_gprs_out"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 94
    .local v3, "gprsOut":Z
    const-string v11, "use_edge_in"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 95
    .local v0, "edgeIn":Z
    const-string v11, "use_edge_out"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 99
    .local v1, "edgeOut":Z
    if-nez v5, :cond_0

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    move v8, v7

    .line 100
    .local v8, "useGsmIn":Z
    :goto_0
    if-nez v6, :cond_1

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    move v9, v7

    .line 102
    .local v9, "useGsmOut":Z
    :goto_1
    if-nez v8, :cond_2

    if-nez v9, :cond_2

    .line 105
    .local v7, "useGsm":Z
    :goto_2
    iget-object v10, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globGsm:Landroid/widget/CheckBox;

    invoke-virtual {v10, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    sget-object v4, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->NEVER:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    .line 120
    .local v4, "mode":Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;
    invoke-direct {p0, v4}, Lcom/weirdvoice/ui/prefs/PrefsFast;->setProfile(Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;)V

    .line 121
    return-void

    .end local v4    # "mode":Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;
    .end local v7    # "useGsm":Z
    .end local v8    # "useGsmIn":Z
    .end local v9    # "useGsmOut":Z
    :cond_0
    move v8, v10

    .line 99
    goto :goto_0

    .restart local v8    # "useGsmIn":Z
    :cond_1
    move v9, v10

    .line 100
    goto :goto_1

    .restart local v9    # "useGsmOut":Z
    :cond_2
    move v7, v10

    .line 102
    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 132
    .local v0, "id":I
    const v1, 0x7f0b00cc

    if-eq v0, v1, :cond_0

    const v1, 0x7f0b00ca

    if-ne v0, v1, :cond_2

    .line 133
    :cond_0
    sget-object v1, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->ALWAYS:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/prefs/PrefsFast;->setProfile(Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;)V

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    const v1, 0x7f0b00cf

    if-eq v0, v1, :cond_3

    const v1, 0x7f0b00cd

    if-ne v0, v1, :cond_4

    .line 136
    :cond_3
    sget-object v1, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->WIFI:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/prefs/PrefsFast;->setProfile(Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;)V

    goto :goto_0

    .line 138
    :cond_4
    const v1, 0x7f0b00d2

    if-eq v0, v1, :cond_5

    const v1, 0x7f0b00d0

    if-ne v0, v1, :cond_6

    .line 139
    :cond_5
    sget-object v1, Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;->NEVER:Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/prefs/PrefsFast;->setProfile(Lcom/weirdvoice/ui/prefs/PrefsFast$Profile;)V

    goto :goto_0

    .line 141
    :cond_6
    const v1, 0x7f0b00c7

    if-ne v0, v1, :cond_7

    .line 142
    iget-object v1, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globIntegrate:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 143
    :cond_7
    const v1, 0x7f0b00d3

    if-ne v0, v1, :cond_8

    .line 144
    iget-object v1, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globGsm:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 145
    :cond_8
    const v1, 0x7f0b00c0

    if-ne v0, v1, :cond_1

    .line 146
    const-string v1, "has_already_setup"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    .line 147
    const-string v1, "has_already_setup"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 149
    :cond_9
    invoke-direct {p0}, Lcom/weirdvoice/ui/prefs/PrefsFast;->applyPrefs()V

    .line 150
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/PrefsFast;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v1, 0x7f030037

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/prefs/PrefsFast;->setContentView(I)V

    .line 59
    const v1, 0x7f0b00c9

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/prefs/PrefsFast;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globIntegrate:Landroid/widget/CheckBox;

    .line 60
    const v1, 0x7f0b00cc

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/prefs/PrefsFast;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globProfileAlways:Landroid/widget/RadioButton;

    .line 61
    const v1, 0x7f0b00cf

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/prefs/PrefsFast;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globProfileWifi:Landroid/widget/RadioButton;

    .line 62
    const v1, 0x7f0b00d2

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/prefs/PrefsFast;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globProfileNever:Landroid/widget/RadioButton;

    .line 63
    const v1, 0x7f0b00d5

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/prefs/PrefsFast;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globGsm:Landroid/widget/CheckBox;

    .line 65
    const v1, 0x7f0b00c0

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/prefs/PrefsFast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 67
    .local v0, "saveBtn":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globProfileAlways:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globProfileNever:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/weirdvoice/ui/prefs/PrefsFast;->globProfileWifi:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x7f0b00c7

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/prefs/PrefsFast;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0b00ca

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/prefs/PrefsFast;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v1, 0x7f0b00cd

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/prefs/PrefsFast;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f0b00d0

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/prefs/PrefsFast;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v1, 0x7f0b00d3

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/prefs/PrefsFast;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-direct {p0}, Lcom/weirdvoice/ui/prefs/PrefsFast;->updateFromPrefs()V

    .line 79
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onDestroy()V

    .line 86
    return-void
.end method
