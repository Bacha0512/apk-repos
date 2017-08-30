.class public Lcom/weirdvoice/wizards/impl/Advanced;
.super Lcom/weirdvoice/wizards/impl/BaseImplementation;
.source "Advanced.java"


# static fields
.field protected static final FIELD_AUTH_ID:Ljava/lang/String; = "auth_id"

.field protected static final FIELD_CALLER_ID:Ljava/lang/String; = "caller_id"

.field protected static final FIELD_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field protected static final FIELD_PASSWORD:Ljava/lang/String; = "password"

.field protected static final FIELD_PROXY:Ljava/lang/String; = "proxy"

.field protected static final FIELD_SERVER:Ljava/lang/String; = "server"

.field protected static final FIELD_TCP:Ljava/lang/String; = "use_tcp"

.field protected static final FIELD_USERNAME:Ljava/lang/String; = "username"

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

.field protected static final THIS_FILE:Ljava/lang/String; = "Advanced W"


# instance fields
.field protected accountAuthId:Landroid/preference/EditTextPreference;

.field protected accountCallerId:Landroid/preference/EditTextPreference;

.field protected accountDisplayName:Landroid/preference/EditTextPreference;

.field protected accountPassword:Landroid/preference/EditTextPreference;

.field protected accountProxy:Landroid/preference/EditTextPreference;

.field protected accountServer:Landroid/preference/EditTextPreference;

.field protected accountUseTcp:Landroid/preference/CheckBoxPreference;

.field protected accountUserName:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/weirdvoice/wizards/impl/Advanced$1;

    invoke-direct {v0}, Lcom/weirdvoice/wizards/impl/Advanced$1;-><init>()V

    sput-object v0, Lcom/weirdvoice/wizards/impl/Advanced;->SUMMARIES:Ljava/util/HashMap;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/weirdvoice/wizards/impl/BaseImplementation;-><init>()V

    return-void
.end method

.method private bindFields()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Advanced;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountDisplayName:Landroid/preference/EditTextPreference;

    .line 58
    const-string v0, "caller_id"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Advanced;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountCallerId:Landroid/preference/EditTextPreference;

    .line 59
    const-string v0, "server"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Advanced;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountServer:Landroid/preference/EditTextPreference;

    .line 60
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Advanced;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountUserName:Landroid/preference/EditTextPreference;

    .line 61
    const-string v0, "auth_id"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Advanced;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountAuthId:Landroid/preference/EditTextPreference;

    .line 62
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Advanced;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountPassword:Landroid/preference/EditTextPreference;

    .line 63
    const-string v0, "use_tcp"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Advanced;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountUseTcp:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v0, "proxy"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Advanced;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountProxy:Landroid/preference/EditTextPreference;

    .line 65
    return-void
.end method

.method private setFieldTextSafe(Landroid/preference/EditTextPreference;Ljava/lang/String;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/EditTextPreference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1, p2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/weirdvoice/api/SipProfile;)Lcom/weirdvoice/api/SipProfile;
    .locals 5
    .param p1, "account"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/impl/Advanced;->getServer()Ljava/lang/String;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "serverParts":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountCallerId:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    const-string v3, " <sip:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountUserName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/weirdvoice/api/SipUri;->encodeUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    iput-object v1, p1, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "sip:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/weirdvoice/wizards/impl/Advanced;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 171
    const-string v1, "*"

    iput-object v1, p1, Lcom/weirdvoice/api/SipProfile;->realm:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountAuthId:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Lcom/weirdvoice/wizards/impl/Advanced;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    .line 174
    iget-object v1, p1, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountUserName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Lcom/weirdvoice/wizards/impl/Advanced;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Lcom/weirdvoice/wizards/impl/Advanced;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    .line 178
    const-string v1, "Digest"

    iput-object v1, p1, Lcom/weirdvoice/api/SipProfile;->scheme:Ljava/lang/String;

    .line 179
    iput v2, p1, Lcom/weirdvoice/api/SipProfile;->datatype:I

    .line 181
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountUseTcp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 183
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Lcom/weirdvoice/wizards/impl/Advanced;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 184
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sip:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p1, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 188
    :goto_1
    return-object p1

    :cond_1
    move v1, v2

    .line 181
    goto :goto_0

    .line 186
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    goto :goto_1
.end method

.method public canSave()Z
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x1

    .line 150
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/weirdvoice/wizards/impl/Advanced;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/weirdvoice/wizards/impl/Advanced;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 152
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountServer:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/weirdvoice/wizards/impl/Advanced;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/weirdvoice/wizards/impl/Advanced;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 153
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountUserName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountUserName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/weirdvoice/wizards/impl/Advanced;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/weirdvoice/wizards/impl/Advanced;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 154
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/weirdvoice/wizards/impl/Advanced;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/weirdvoice/wizards/impl/Advanced;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 156
    return v0
.end method

.method public fillLayout(Lcom/weirdvoice/api/SipProfile;)V
    .locals 6
    .param p1, "account"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Lcom/weirdvoice/wizards/impl/Advanced;->bindFields()V

    .line 70
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v4, p1, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 73
    iget-object v2, p1, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v2}, Lcom/weirdvoice/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;

    move-result-object v0

    .line 75
    .local v0, "parsedInfo":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    iget-object v1, p1, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 76
    .local v1, "serverFull":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 77
    const-string v1, ""

    .line 83
    :goto_0
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountServer:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v2, v1}, Lcom/weirdvoice/wizards/impl/Advanced;->setFieldTextSafe(Landroid/preference/EditTextPreference;Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountCallerId:Landroid/preference/EditTextPreference;

    iget-object v4, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/weirdvoice/wizards/impl/Advanced;->setFieldTextSafe(Landroid/preference/EditTextPreference;Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountUserName:Landroid/preference/EditTextPreference;

    iget-object v4, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/weirdvoice/wizards/impl/Advanced;->setFieldTextSafe(Landroid/preference/EditTextPreference;Ljava/lang/String;)V

    .line 87
    iget-object v2, p1, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 88
    iget-object v2, p1, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    iget-object v4, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountAuthId:Landroid/preference/EditTextPreference;

    iget-object v4, p1, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/weirdvoice/wizards/impl/Advanced;->setFieldTextSafe(Landroid/preference/EditTextPreference;Ljava/lang/String;)V

    .line 95
    :goto_1
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v4, p1, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/weirdvoice/wizards/impl/Advanced;->setFieldTextSafe(Landroid/preference/EditTextPreference;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountUseTcp:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 97
    iget-object v4, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountUseTcp:Landroid/preference/CheckBoxPreference;

    iget-object v2, p1, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    :cond_0
    iget-object v2, p1, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 101
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountProxy:Landroid/preference/EditTextPreference;

    iget-object v4, p1, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    aget-object v3, v4, v3

    const-string v4, "sip:"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/weirdvoice/wizards/impl/Advanced;->setFieldTextSafe(Landroid/preference/EditTextPreference;Ljava/lang/String;)V

    .line 105
    :goto_3
    return-void

    .line 79
    :cond_1
    const-string v2, "sip:"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountAuthId:Landroid/preference/EditTextPreference;

    const-string v4, ""

    invoke-direct {p0, v2, v4}, Lcom/weirdvoice/wizards/impl/Advanced;->setFieldTextSafe(Landroid/preference/EditTextPreference;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 97
    goto :goto_2

    .line 103
    :cond_4
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountProxy:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/weirdvoice/wizards/impl/Advanced;->setFieldTextSafe(Landroid/preference/EditTextPreference;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public getBasePreferenceResource()I
    .locals 1

    .prologue
    .line 193
    const v0, 0x7f05000c

    return v0
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 140
    sget-object v1, Lcom/weirdvoice/wizards/impl/Advanced;->SUMMARIES:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 141
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Advanced;->parent:Lcom/weirdvoice/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/weirdvoice/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/weirdvoice/wizards/impl/Advanced;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public updateDescriptions()V
    .locals 1

    .prologue
    .line 114
    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Advanced;->setStringFieldSummary(Ljava/lang/String;)V

    .line 115
    const-string v0, "caller_id"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Advanced;->setStringFieldSummary(Ljava/lang/String;)V

    .line 116
    const-string v0, "server"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Advanced;->setStringFieldSummary(Ljava/lang/String;)V

    .line 117
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Advanced;->setStringFieldSummary(Ljava/lang/String;)V

    .line 118
    const-string v0, "auth_id"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Advanced;->setStringFieldSummary(Ljava/lang/String;)V

    .line 119
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Advanced;->setPasswordFieldSummary(Ljava/lang/String;)V

    .line 120
    const-string v0, "proxy"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Advanced;->setStringFieldSummary(Ljava/lang/String;)V

    .line 121
    return-void
.end method
