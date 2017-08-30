.class public Lcom/weirdvoice/wizards/impl/Local;
.super Lcom/weirdvoice/wizards/impl/BaseImplementation;
.source "Local.java"


# static fields
.field private static SUMMARIES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final THIS_FILE:Ljava/lang/String; = "Local W"

.field private static final TRANSPORT_LIST_KEY:Ljava/lang/String; = "transport_list"


# instance fields
.field private accountDisplayName:Landroid/preference/EditTextPreference;

.field private transportPref:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/weirdvoice/wizards/impl/Local$1;

    invoke-direct {v0}, Lcom/weirdvoice/wizards/impl/Local$1;-><init>()V

    sput-object v0, Lcom/weirdvoice/wizards/impl/Local;->SUMMARIES:Ljava/util/HashMap;

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/weirdvoice/wizards/impl/BaseImplementation;-><init>()V

    return-void
.end method

.method private bindFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Local;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Local;->accountDisplayName:Landroid/preference/EditTextPreference;

    .line 53
    const-string v0, "caller_id"

    invoke-virtual {p0, v1, v0}, Lcom/weirdvoice/wizards/impl/Local;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "server"

    invoke-virtual {p0, v1, v0}, Lcom/weirdvoice/wizards/impl/Local;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "auth_id"

    invoke-virtual {p0, v1, v0}, Lcom/weirdvoice/wizards/impl/Local;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "username"

    invoke-virtual {p0, v1, v0}, Lcom/weirdvoice/wizards/impl/Local;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "password"

    invoke-virtual {p0, v1, v0}, Lcom/weirdvoice/wizards/impl/Local;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "use_tcp"

    invoke-virtual {p0, v1, v0}, Lcom/weirdvoice/wizards/impl/Local;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "proxy"

    invoke-virtual {p0, v1, v0}, Lcom/weirdvoice/wizards/impl/Local;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private static getIntValue(Landroid/preference/ListPreference;I)I
    .locals 3
    .param p0, "pref"    # Landroid/preference/ListPreference;
    .param p1, "defaultValue"    # I

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 142
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 139
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "Local W"

    const-string v2, "List item is not a number"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public buildAccount(Lcom/weirdvoice/api/SipProfile;)Lcom/weirdvoice/api/SipProfile;
    .locals 2
    .param p1, "account"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/weirdvoice/wizards/impl/Local;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p1, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p1, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/weirdvoice/wizards/impl/Local;->transportPref:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/weirdvoice/wizards/impl/Local;->getIntValue(Landroid/preference/ListPreference;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 133
    return-object p1
.end method

.method public canSave()Z
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x1

    .line 123
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Local;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/weirdvoice/wizards/impl/Local;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/weirdvoice/wizards/impl/Local;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 125
    return v0
.end method

.method public fillLayout(Lcom/weirdvoice/api/SipProfile;)V
    .locals 5
    .param p1, "account"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    const v4, 0x7f0c00a9

    .line 63
    invoke-direct {p0}, Lcom/weirdvoice/wizards/impl/Local;->bindFields()V

    .line 65
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v3, p1, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->parent:Lcom/weirdvoice/wizards/BasePrefsWizard;

    const v3, 0x7f0b015c

    invoke-virtual {v2, v3}, Lcom/weirdvoice/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/impl/Local;->getLocalIpAddresses()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 71
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 72
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->parent:Lcom/weirdvoice/wizards/BasePrefsWizard;

    const v3, 0x7f0b015b

    invoke-virtual {v2, v3}, Lcom/weirdvoice/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    const/4 v0, 0x1

    .line 76
    .local v0, "recycle":Z
    const-string v2, "transport_list"

    invoke-virtual {p0, v2}, Lcom/weirdvoice/wizards/impl/Local;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->transportPref:Landroid/preference/ListPreference;

    .line 77
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->transportPref:Landroid/preference/ListPreference;

    if-nez v2, :cond_1

    .line 78
    new-instance v2, Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/weirdvoice/wizards/impl/Local;->parent:Lcom/weirdvoice/wizards/BasePrefsWizard;

    invoke-direct {v2, v3}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->transportPref:Landroid/preference/ListPreference;

    .line 79
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->transportPref:Landroid/preference/ListPreference;

    const-string v3, "transport_list"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    .line 85
    :goto_0
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->transportPref:Landroid/preference/ListPreference;

    const v3, 0x7f0e001b

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 86
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->transportPref:Landroid/preference/ListPreference;

    const v3, 0x7f0e001a

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 87
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->transportPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 88
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->transportPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 89
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->transportPref:Landroid/preference/ListPreference;

    const v3, 0x7f0c00aa

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 90
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->transportPref:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 92
    if-nez v0, :cond_0

    .line 93
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->transportPref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v2}, Lcom/weirdvoice/wizards/impl/Local;->addPreference(Landroid/preference/Preference;)V

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Local;->transportPref:Landroid/preference/ListPreference;

    iget-object v3, p1, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 96
    return-void

    .line 82
    :cond_1
    const-string v2, "Local W"

    const-string v3, "Recycle existing list pref"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBasePreferenceResource()I
    .locals 1

    .prologue
    .line 147
    const v0, 0x7f05000c

    return v0
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-object v1, Lcom/weirdvoice/wizards/impl/Local;->SUMMARIES:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 114
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Local;->parent:Lcom/weirdvoice/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/weirdvoice/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getLocalIpAddresses()Ljava/lang/String;
    .locals 8

    .prologue
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 173
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 186
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    const-string v6, "\n"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 174
    .restart local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 175
    .local v5, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 176
    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 177
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 178
    .local v4, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_2

    .line 179
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 183
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    .end local v5    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v3

    .line 184
    .local v3, "ex":Ljava/net/SocketException;
    const-string v6, "Local W"

    const-string v7, "Impossible to get ip address"

    invoke-static {v6, v7, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultParams(Lcom/weirdvoice/utils/PreferencesWrapper;)V
    .locals 3
    .param p1, "prefs"    # Lcom/weirdvoice/utils/PreferencesWrapper;

    .prologue
    const/4 v2, 0x1

    .line 157
    invoke-super {p0, p1}, Lcom/weirdvoice/wizards/impl/BaseImplementation;->setDefaultParams(Lcom/weirdvoice/utils/PreferencesWrapper;)V

    .line 158
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Local;->transportPref:Landroid/preference/ListPreference;

    invoke-static {v1, v2}, Lcom/weirdvoice/wizards/impl/Local;->getIntValue(Landroid/preference/ListPreference;I)I

    move-result v0

    .line 159
    .local v0, "transport":I
    if-eq v0, v2, :cond_0

    if-nez v0, :cond_2

    .line 160
    :cond_0
    const-string v1, "network_udp_transport_port"

    const-string v2, "5060"

    invoke-virtual {p1, v1, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 162
    const-string v1, "network_tcp_transport_port"

    const-string v2, "5060"

    invoke-virtual {p1, v1, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 164
    const-string v1, "network_tls_transport_port"

    const-string v2, "5061"

    invoke-virtual {p1, v1, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateDescriptions()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Local;->setStringFieldSummary(Ljava/lang/String;)V

    .line 100
    return-void
.end method
