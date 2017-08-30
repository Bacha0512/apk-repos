.class public Lcom/weirdvoice/toolbox/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private cxt:Landroid/content/Context;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "Credentials"

    iput-object v0, p0, Lcom/weirdvoice/toolbox/Credentials;->LOGTAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private doSaveCredentials()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 44
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->gateway()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "gate":Ljava/lang/String;
    iget-object v6, p0, Lcom/weirdvoice/toolbox/Credentials;->cxt:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 46
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v6, "deviceid"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "sipusername":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 48
    const-string v6, "Credentials"

    const-string v7, "was unable to get dev id from sp"

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v6, Lcom/weirdvoice/toolbox/AndroidId;

    invoke-direct {v6}, Lcom/weirdvoice/toolbox/AndroidId;-><init>()V

    iget-object v7, p0, Lcom/weirdvoice/toolbox/Credentials;->cxt:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/weirdvoice/toolbox/AndroidId;->getSipId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 52
    :cond_0
    const-string v6, "Credentials"

    const-string v7, "new account"

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v0}, Lcom/weirdvoice/api/SipProfile;-><init>()V

    .line 54
    .local v0, "account":Lcom/weirdvoice/api/SipProfile;
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 55
    const-string v6, "BASIC"

    iput-object v6, v0, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    .line 56
    iget-object v6, p0, Lcom/weirdvoice/toolbox/Credentials;->user:Ljava/lang/String;

    iput-object v6, v0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    .line 57
    const-string v6, "Credentials"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "display_name: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/weirdvoice/toolbox/Credentials;->user:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<sip:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 59
    const-string v6, "Credentials"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "acc_id: <sip:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sip:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "regUri":Ljava/lang/String;
    iput-object v2, v0, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 62
    const-string v6, "Credentials"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "reg_uri: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-array v6, v9, [Ljava/lang/String;

    aput-object v2, v6, v10

    iput-object v6, v0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 64
    const-string v6, "*"

    iput-object v6, v0, Lcom/weirdvoice/api/SipProfile;->realm:Ljava/lang/String;

    .line 65
    iput-object v3, v0, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    .line 66
    const-string v6, "Credentials"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "username: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v6, ""

    iput-object v6, v0, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    .line 68
    const-string v6, "Digest"

    iput-object v6, v0, Lcom/weirdvoice/api/SipProfile;->scheme:Ljava/lang/String;

    .line 69
    iput v10, v0, Lcom/weirdvoice/api/SipProfile;->datatype:I

    .line 70
    const/16 v6, 0x708

    iput v6, v0, Lcom/weirdvoice/api/SipProfile;->reg_timeout:I

    .line 71
    iput-boolean v9, v0, Lcom/weirdvoice/api/SipProfile;->active:Z

    .line 72
    const-string v6, ""

    iput-object v6, v0, Lcom/weirdvoice/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 73
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v0, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 74
    const-string v6, "Credentials"

    const-string v7, "new account ready"

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v6, "Credentials"

    const-string v7, "insert new account"

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v6, p0, Lcom/weirdvoice/toolbox/Credentials;->cxt:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipProfile;->getDbContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 78
    .local v5, "uri":Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 79
    const-string v6, "Credentials"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "insert ends acc: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method public saveCredentials(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;
    .param p3, "pcontext"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string v0, "Credentials"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new cred: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/weirdvoice/toolbox/Credentials;->user:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/weirdvoice/toolbox/Credentials;->cxt:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/weirdvoice/toolbox/Credentials;->doSaveCredentials()V

    .line 41
    return-void
.end method
