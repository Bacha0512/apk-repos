.class public final Lcom/weirdvoice/utils/CustomDistribution;
.super Ljava/lang/Object;
.source "CustomDistribution.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static altgateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "sip.zenitalk.com:142"

    return-object v0
.end method

.method public static appid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "02"

    return-object v0
.end method

.method public static appname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "weirdvoice"

    return-object v0
.end method

.method public static distributionWantsGeneric(Ljava/lang/String;)Z
    .locals 1
    .param p0, "wizardTag"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public static distributionWantsOtherAccounts()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public static distributionWantsOtherProviders()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public static forceNoMultipleCalls()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public static gateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "sip.zenitalk.com:115"

    return-object v0
.end method

.method public static gatewaydflt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "sip.zenitalk.com"

    return-object v0
.end method

.method public static gatewayeighty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "sip.zenitalk.com:80"

    return-object v0
.end method

.method public static getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "com.weirdvoice.toolbox.databasecprovider"

    return-object v0
.end method

.method public static getBG()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f020402

    return v0
.end method

.method public static getBuyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "http://www.zenitalk.com/order.rhtml?u="

    return-object v0
.end method

.method public static getCustomDistributionWizard()Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFaqLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, ""

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public static getMarketUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "market://details?id="

    return-object v0
.end method

.method public static getNightlyUpdaterURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const-string v0, ""

    return-object v0
.end method

.method public static getPrepoDb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "tribair.db"

    return-object v0
.end method

.method public static getRemoteServ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "https://rem.zenitalk.com"

    return-object v0
.end method

.method public static getRootPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "com.weirdvoice"

    return-object v0
.end method

.method public static getSupportEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "support@zenitalk.com"

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "CSipSimple"

    return-object v0
.end method

.method public static getWCBUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "https://market.android.com/details?id=com.wicallbusiness&amp;feature=search_result"

    return-object v0
.end method

.method public static getlogo()I
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f0203db

    return v0
.end method

.method public static getproductkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "dfF8sjsnjnjBGVt62UO9"

    return-object v0
.end method

.method public static isSamApp()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public static isWeirdApp()Z
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->appname()Ljava/lang/String;

    move-result-object v0

    const-string v1, "weird"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static offerWcbPub()Z
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->appname()Ljava/lang/String;

    move-result-object v0

    const-string v1, "usiness"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static showFirstSettingScreen()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public static showIssueList()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public static supportCallRecord()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public static supportFavorites()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public static supportMessaging()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public static unknown_picture()I
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->isWeirdApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const v0, 0x7f0203f8

    .line 67
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0203f7

    goto :goto_0
.end method
