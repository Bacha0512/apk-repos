.class public Lcom/weirdvoice/wizards/impl/CallWithUs;
.super Lcom/weirdvoice/wizards/impl/SimpleImplementation;
.source "CallWithUs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/weirdvoice/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/weirdvoice/api/SipProfile;)Lcom/weirdvoice/api/SipProfile;
    .locals 4
    .param p1, "account"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 52
    invoke-super {p0, p1}, Lcom/weirdvoice/wizards/impl/SimpleImplementation;->buildAccount(Lcom/weirdvoice/api/SipProfile;)Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    .line 53
    .local v0, "acc":Lcom/weirdvoice/api/SipProfile;
    const/16 v1, 0x78

    iput v1, v0, Lcom/weirdvoice/api/SipProfile;->reg_timeout:I

    .line 54
    iput-boolean v3, v0, Lcom/weirdvoice/api/SipProfile;->allow_contact_rewrite:Z

    .line 55
    iput v2, v0, Lcom/weirdvoice/api/SipProfile;->sip_stun_use:I

    .line 56
    iput v2, v0, Lcom/weirdvoice/api/SipProfile;->media_stun_use:I

    .line 57
    iput v2, v0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_use:I

    .line 58
    iput v3, v0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_enable:I

    .line 59
    const-string v1, "086"

    iput-object v1, v0, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 60
    return-object v0
.end method

.method public fillLayout(Lcom/weirdvoice/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/weirdvoice/wizards/impl/SimpleImplementation;->fillLayout(Lcom/weirdvoice/api/SipProfile;)V

    .line 47
    iget-object v0, p0, Lcom/weirdvoice/wizards/impl/CallWithUs;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 48
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "CallWithUs"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "sip.callwithus.com"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultParams(Lcom/weirdvoice/utils/PreferencesWrapper;)V
    .locals 2
    .param p1, "prefs"    # Lcom/weirdvoice/utils/PreferencesWrapper;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/weirdvoice/wizards/impl/SimpleImplementation;->setDefaultParams(Lcom/weirdvoice/utils/PreferencesWrapper;)V

    .line 66
    const-string v0, "stun.sipcel.com"

    invoke-virtual {p1, v0}, Lcom/weirdvoice/utils/PreferencesWrapper;->addStunServer(Ljava/lang/String;)V

    .line 68
    const-string v0, "enable_stun"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 69
    return-void
.end method
