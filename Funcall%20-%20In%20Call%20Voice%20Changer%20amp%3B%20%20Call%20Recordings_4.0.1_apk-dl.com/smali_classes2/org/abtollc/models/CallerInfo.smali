.class public Lorg/abtollc/models/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field public static final EMPTY:Lorg/abtollc/models/CallerInfo;

.field private static final THIS_FILE:Ljava/lang/String; = "CallerInfo"


# instance fields
.field public contactContentUri:Landroid/net/Uri;

.field public contactExists:Z

.field public contactRingtoneUri:Landroid/net/Uri;

.field public name:Ljava/lang/String;

.field public numberLabel:Ljava/lang/String;

.field public numberType:I

.field public personId:J

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoId:J

.field public photoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lorg/abtollc/models/CallerInfo;

    invoke-direct {v0}, Lorg/abtollc/models/CallerInfo;-><init>()V

    sput-object v0, Lorg/abtollc/models/CallerInfo;->EMPTY:Lorg/abtollc/models/CallerInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallerInfoForSelf(Landroid/content/Context;)Lorg/abtollc/models/CallerInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {}, Lorg/abtollc/utils/contacts/ContactsWrapper;->getInstance()Lorg/abtollc/utils/contacts/ContactsWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/abtollc/utils/contacts/ContactsWrapper;->findSelfInfo(Landroid/content/Context;)Lorg/abtollc/models/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lorg/abtollc/models/CallerInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    new-instance v0, Lorg/abtollc/models/CallerInfo;

    invoke-direct {v0}, Lorg/abtollc/models/CallerInfo;-><init>()V

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    new-instance v0, Lorg/abtollc/models/CallerInfo;

    invoke-direct {v0}, Lorg/abtollc/models/CallerInfo;-><init>()V

    .line 58
    .local v0, "callerInfo":Lorg/abtollc/models/CallerInfo;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    invoke-static {p1}, Lorg/abtollc/api/SipUri;->parseSipContact(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipContactInfos;

    move-result-object v1

    .line 61
    .local v1, "uriInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    iget-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-static {v2}, Lorg/abtollc/api/SipUri;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    const-string v2, "CallerInfo"

    const-string v3, "Number looks usable, try People lookup"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lorg/abtollc/utils/contacts/ContactsWrapper;->getInstance()Lorg/abtollc/utils/contacts/ContactsWrapper;

    move-result-object v2

    iget-object v3, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-virtual {v2, p0, v3}, Lorg/abtollc/utils/contacts/ContactsWrapper;->findCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lorg/abtollc/models/CallerInfo;

    move-result-object v0

    .line 68
    :cond_2
    if-nez v0, :cond_0

    iget-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    invoke-static {v2}, Lorg/abtollc/api/SipUri;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "CallerInfo"

    const-string v3, "Display name looks usable, try People lookup"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lorg/abtollc/utils/contacts/ContactsWrapper;->getInstance()Lorg/abtollc/utils/contacts/ContactsWrapper;

    move-result-object v2

    iget-object v3, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    invoke-virtual {v2, p0, v3}, Lorg/abtollc/utils/contacts/ContactsWrapper;->findCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lorg/abtollc/models/CallerInfo;

    move-result-object v0

    goto :goto_0
.end method
