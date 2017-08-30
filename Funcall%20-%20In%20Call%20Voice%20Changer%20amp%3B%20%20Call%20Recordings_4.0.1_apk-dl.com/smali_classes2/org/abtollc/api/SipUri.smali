.class public final Lorg/abtollc/api/SipUri;
.super Ljava/lang/Object;
.source "SipUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/api/SipUri$ParsedSipUriInfos;,
        Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    }
.end annotation


# static fields
.field private static final DIGIT_NBR_RULE:Ljava/lang/String; = "^[0-9\\-#\\+\\*\\(\\)]+$"

.field private static final SIP_CONTACT_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SIP_CONTACT_PATTERN:Ljava/util/regex/Pattern;

.field private static final SIP_HOST_PATTERN:Ljava/util/regex/Pattern;

.field private static final SIP_SCHEME_RULE:Ljava/lang/String; = "sip(?:s)?|tel"

.field private static final SIP_URI_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "^([^@:]+)@([^@:]+)$"

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/abtollc/api/SipUri;->SIP_CONTACT_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 23
    const-string v0, "^(?:\")?([^<\"]*)(?:\")?[ ]*(?:<)?(sip(?:s)?|tel):([^@]+)@([^>]+)(?:>)?$"

    .line 24
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/abtollc/api/SipUri;->SIP_CONTACT_PATTERN:Ljava/util/regex/Pattern;

    .line 25
    const-string v0, "^(?:\")?([^<\"]*)(?:\")?[ ]*(?:<)?(sip(?:s)?|tel):([^@>]+)(?:>)?$"

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/abtollc/api/SipUri;->SIP_HOST_PATTERN:Ljava/util/regex/Pattern;

    .line 311
    const-string v0, "^(sip(?:s)?):(?:[^:]*(?::[^@]*)?@)?([^:@]*)(?::([0-9]*))?$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/abtollc/api/SipUri;->SIP_URI_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static encodeUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "user"    # Ljava/lang/String;

    .prologue
    .line 350
    const-string v0, "&=+$,;?/-_.!~*\'()"

    invoke-static {p0, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static forgeSipUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCanonicalSipContact(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sipContact"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/abtollc/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "sipContact"    # Ljava/lang/String;
    .param p1, "includeScheme"    # Z

    .prologue
    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 253
    sget-object v4, Lorg/abtollc/api/SipUri;->SIP_CONTACT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 254
    .local v2, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 255
    .local v0, "hasUsername":Z
    const/4 v1, 0x0

    .line 257
    .local v1, "isHost":Z
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 258
    const/4 v0, 0x1

    .line 264
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 265
    if-nez p1, :cond_0

    if-eqz v1, :cond_1

    .line 266
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_1
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    if-eqz v0, :cond_2

    .line 271
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .end local v0    # "hasUsername":Z
    .end local v1    # "isHost":Z
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 260
    .restart local v0    # "hasUsername":Z
    .restart local v1    # "isHost":Z
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    :cond_3
    sget-object v4, Lorg/abtollc/api/SipUri;->SIP_HOST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 261
    const/4 v1, 0x1

    goto :goto_0

    .line 275
    :cond_4
    sget-object v4, Lorg/abtollc/api/SipUri;->SIP_CONTACT_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 276
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 277
    if-eqz p1, :cond_5

    .line 278
    const-string v4, "sip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_5
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 282
    :cond_6
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getDisplayedSimpleContact(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/lang/CharSequence;

    .prologue
    .line 168
    if-eqz p0, :cond_2

    .line 169
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "remoteContact":Ljava/lang/String;
    invoke-static {v1}, Lorg/abtollc/api/SipUri;->parseSipContact(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipContactInfos;

    move-result-object v0

    .line 172
    .local v0, "parsedInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    iget-object v2, v0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    iget-object v1, v0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 181
    .end local v0    # "parsedInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    .end local v1    # "remoteContact":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 175
    .restart local v0    # "parsedInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    .restart local v1    # "remoteContact":Ljava/lang/String;
    :cond_1
    iget-object v2, v0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    iget-object v1, v0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    goto :goto_0

    .line 181
    .end local v0    # "parsedInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    .end local v1    # "remoteContact":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public static getPhoneNumber(Lorg/abtollc/api/SipUri$ParsedSipContactInfos;)Ljava/lang/String;
    .locals 2
    .param p0, "uriInfos"    # Lorg/abtollc/api/SipUri$ParsedSipContactInfos;

    .prologue
    const/4 v0, 0x0

    .line 216
    if-nez p0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object v0

    .line 219
    :cond_1
    iget-object v1, p0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-static {v1}, Lorg/abtollc/api/SipUri;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    iget-object v0, p0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    goto :goto_0

    .line 221
    :cond_2
    iget-object v1, p0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    invoke-static {v1}, Lorg/abtollc/api/SipUri;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v0, p0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSipNumberSimpleContact(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/lang/CharSequence;

    .prologue
    .line 186
    if-eqz p0, :cond_1

    .line 187
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "remoteContact":Ljava/lang/String;
    invoke-static {v1}, Lorg/abtollc/api/SipUri;->parseSipContact(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipContactInfos;

    move-result-object v0

    .line 190
    .local v0, "parsedInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    iget-object v2, v0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    iget-object v1, v0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    .line 196
    .end local v0    # "parsedInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    .end local v1    # "remoteContact":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private static getTransportType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v3, "transport"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 149
    .local v1, "trIndex":I
    const-string v2, ""

    .line 150
    .local v2, "trType":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 151
    const-string v3, "="

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 152
    .local v0, "eqIndex":I
    if-lez v0, :cond_0

    add-int/lit8 v3, v1, -0x9

    if-ne v0, v3, :cond_0

    .line 153
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 156
    .end local v0    # "eqIndex":I
    :cond_0
    return-object v2
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "phone"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^[0-9\\-#\\+\\*\\(\\)]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseSipContact(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    .locals 6
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 112
    new-instance v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;

    invoke-direct {v1}, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;-><init>()V

    .line 114
    .local v1, "parsedInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    sget-object v2, Lorg/abtollc/api/SipUri;->SIP_CONTACT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 116
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 118
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    .line 121
    invoke-static {p0}, Lorg/abtollc/api/SipUri;->getTransportType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->transport:Ljava/lang/String;

    .line 144
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object v1

    .line 124
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    :cond_1
    sget-object v2, Lorg/abtollc/api/SipUri;->SIP_HOST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    .line 129
    invoke-static {p0}, Lorg/abtollc/api/SipUri;->getTransportType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->transport:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_2
    sget-object v2, Lorg/abtollc/api/SipUri;->SIP_CONTACT_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    .line 135
    invoke-static {p0}, Lorg/abtollc/api/SipUri;->getTransportType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->transport:Ljava/lang/String;

    goto :goto_0

    .line 138
    :cond_3
    iput-object p0, v1, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static parseSipUri(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipUriInfos;
    .locals 4
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    .line 321
    new-instance v1, Lorg/abtollc/api/SipUri$ParsedSipUriInfos;

    invoke-direct {v1}, Lorg/abtollc/api/SipUri$ParsedSipUriInfos;-><init>()V

    .line 323
    .local v1, "parsedInfos":Lorg/abtollc/api/SipUri$ParsedSipUriInfos;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    sget-object v2, Lorg/abtollc/api/SipUri;->SIP_URI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 325
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipUriInfos;->scheme:Ljava/lang/String;

    .line 327
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipUriInfos;->domain:Ljava/lang/String;

    .line 328
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 330
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lorg/abtollc/api/SipUri$ParsedSipUriInfos;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object v1

    .line 331
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
