.class public final Lcom/weirdvoice/api/SipUri;
.super Ljava/lang/Object;
.source "SipUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;,
        Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;
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
    .line 46
    const-string v0, "^([^@:]+)@([^@]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 45
    sput-object v0, Lcom/weirdvoice/api/SipUri;->SIP_CONTACT_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "^(?:\")?([^<\"]*)(?:\")?[ ]*(?:<)?(sip(?:s)?|tel):([^@]+)@([^>]+)(?:>)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 47
    sput-object v0, Lcom/weirdvoice/api/SipUri;->SIP_CONTACT_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    const-string v0, "^(?:\")?([^<\"]*)(?:\")?[ ]*(?:<)?(sip(?:s)?|tel):([^@>]+)(?:>)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 49
    sput-object v0, Lcom/weirdvoice/api/SipUri;->SIP_HOST_PATTERN:Ljava/util/regex/Pattern;

    .line 314
    const-string v0, "^(sip(?:s)?):(?:[^:]*(?::[^@]*)?@)?([^:@]*)(?::([0-9]*))?$"

    const/4 v1, 0x2

    .line 313
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/api/SipUri;->SIP_URI_PATTERN:Ljava/util/regex/Pattern;

    .line 314
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static encodeUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "user"    # Ljava/lang/String;

    .prologue
    .line 352
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
    .line 344
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCanonicalSipContact(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sipContact"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/weirdvoice/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "sipContact"    # Ljava/lang/String;
    .param p1, "includeScheme"    # Z

    .prologue
    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 256
    sget-object v4, Lcom/weirdvoice/api/SipUri;->SIP_CONTACT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 257
    .local v2, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 258
    .local v0, "hasUsername":Z
    const/4 v1, 0x0

    .line 260
    .local v1, "isHost":Z
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    const/4 v0, 0x1

    .line 267
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 268
    if-nez p1, :cond_0

    if-eqz v1, :cond_1

    .line 269
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_1
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    if-eqz v0, :cond_2

    .line 274
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .end local v0    # "hasUsername":Z
    .end local v1    # "isHost":Z
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 263
    .restart local v0    # "hasUsername":Z
    .restart local v1    # "isHost":Z
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    :cond_3
    sget-object v4, Lcom/weirdvoice/api/SipUri;->SIP_HOST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 264
    const/4 v1, 0x1

    goto :goto_0

    .line 278
    :cond_4
    sget-object v4, Lcom/weirdvoice/api/SipUri;->SIP_CONTACT_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 280
    if-eqz p1, :cond_5

    .line 281
    const-string v4, "sip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_5
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 285
    :cond_6
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getDisplayedSimpleContact(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/lang/CharSequence;

    .prologue
    .line 186
    if-eqz p0, :cond_2

    .line 187
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "remoteContact":Ljava/lang/String;
    invoke-static {v1}, Lcom/weirdvoice/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;

    move-result-object v0

    .line 190
    .local v0, "parsedInfos":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    iget-object v2, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    iget-object v1, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 199
    .end local v0    # "parsedInfos":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    .end local v1    # "remoteContact":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 193
    .restart local v0    # "parsedInfos":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    .restart local v1    # "remoteContact":Ljava/lang/String;
    :cond_1
    iget-object v2, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    iget-object v1, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    goto :goto_0

    .line 199
    .end local v0    # "parsedInfos":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    .end local v1    # "remoteContact":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public static getPhoneNumber(Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;)Ljava/lang/String;
    .locals 2
    .param p0, "uriInfos"    # Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;

    .prologue
    const/4 v0, 0x0

    .line 219
    if-nez p0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-static {v1}, Lcom/weirdvoice/api/SipUri;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    iget-object v0, p0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    goto :goto_0

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/weirdvoice/api/SipUri;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "phone"    # Ljava/lang/String;

    .prologue
    .line 209
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

.method public static parseSipContact(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    .locals 6
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 145
    new-instance v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;

    invoke-direct {v1}, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;-><init>()V

    .line 147
    .local v1, "parsedInfos":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    sget-object v2, Lcom/weirdvoice/api/SipUri;->SIP_CONTACT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 149
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 151
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    .line 152
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    .line 153
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    .line 174
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object v1

    .line 156
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    :cond_1
    sget-object v2, Lcom/weirdvoice/api/SipUri;->SIP_HOST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 159
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    .line 160
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_2
    sget-object v2, Lcom/weirdvoice/api/SipUri;->SIP_CONTACT_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    goto :goto_0

    .line 168
    :cond_3
    iput-object p0, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static parseSipUri(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;
    .locals 4
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    .line 323
    new-instance v1, Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;

    invoke-direct {v1}, Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;-><init>()V

    .line 325
    .local v1, "parsedInfos":Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    sget-object v2, Lcom/weirdvoice/api/SipUri;->SIP_URI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 327
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;->scheme:Ljava/lang/String;

    .line 329
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;->domain:Ljava/lang/String;

    .line 330
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 332
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object v1

    .line 333
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
