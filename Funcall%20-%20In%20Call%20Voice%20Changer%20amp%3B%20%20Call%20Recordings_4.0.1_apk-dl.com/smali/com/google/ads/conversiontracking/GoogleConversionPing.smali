.class public Lcom/google/ads/conversiontracking/GoogleConversionPing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/conversiontracking/a$c;Z)V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/ads/conversiontracking/GoogleConversionPing$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/google/ads/conversiontracking/GoogleConversionPing$1;-><init>(Ljava/lang/String;ZLcom/google/ads/conversiontracking/a$c;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    return-void
.end method

.method public static recordConversionPing(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "conversionId"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "isRepeatable"    # Z

    .prologue
    .line 71
    new-instance v0, Lcom/google/ads/conversiontracking/a$c;

    invoke-direct {v0}, Lcom/google/ads/conversiontracking/a$c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/ads/conversiontracking/a$c;->a(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/ads/conversiontracking/a$c;->a(Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/ads/conversiontracking/a$c;->b(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/ads/conversiontracking/a$c;->c(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v0

    .line 76
    invoke-static {p0, v0, p5}, Lcom/google/ads/conversiontracking/a;->a(Landroid/content/Context;Lcom/google/ads/conversiontracking/a$c;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 80
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;->GOOGLE_CONVERSION:Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;

    if-ne p2, v1, :cond_1

    .line 82
    invoke-static {p0, p1}, Lcom/google/ads/conversiontracking/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/conversiontracking/a$c;->a(Lcom/google/ads/conversiontracking/a$a;)Lcom/google/ads/conversiontracking/a$c;

    .line 85
    :cond_1
    invoke-static {p0, v0}, Lcom/google/ads/conversiontracking/a;->b(Landroid/content/Context;Lcom/google/ads/conversiontracking/a$c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, v0, p5}, Lcom/google/ads/conversiontracking/GoogleConversionPing;->a(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/conversiontracking/a$c;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string v1, "GoogleConversionPing"

    const-string v2, "Error sending ping"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static recordConversionPing(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "conversionId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "isRepeatable"    # Z

    .prologue
    .line 46
    sget-object v2, Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;->GOOGLE_CONVERSION:Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/ads/conversiontracking/GoogleConversionPing;->recordConversionPing(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    return-void
.end method

.method public static recordRemarketingPing(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "conversionId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p4, "customParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "GoogleConversionPing"

    const-string v1, "Error sending remarketing ping with empty screen name"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return-void

    .line 112
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/ads/conversiontracking/a$c;

    invoke-direct {v0}, Lcom/google/ads/conversiontracking/a$c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/ads/conversiontracking/a$c;->a(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/conversiontracking/a$c;->a()Lcom/google/ads/conversiontracking/a$c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/ads/conversiontracking/a$c;->b(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/ads/conversiontracking/a$c;->c(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/ads/conversiontracking/a$c;->d(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/ads/conversiontracking/a$c;->a(Ljava/util/Map;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/ads/conversiontracking/a;->b(Landroid/content/Context;Lcom/google/ads/conversiontracking/a$c;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2}, Lcom/google/ads/conversiontracking/GoogleConversionPing;->a(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/conversiontracking/a$c;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string v1, "GoogleConversionPing"

    const-string v2, "Error sending ping"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static registerReferrer(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "clickUrl"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 136
    if-nez p1, :cond_0

    .line 137
    const-string v1, "GoogleConversionPing"

    const-string v2, "Failed to register referrer from a null click url"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return v0

    .line 140
    :cond_0
    const-string v1, "GoogleConversionPing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {p1}, Lcom/google/ads/conversiontracking/a;->a(Landroid/net/Uri;)Lcom/google/ads/conversiontracking/a$b;

    move-result-object v1

    .line 142
    if-nez v1, :cond_1

    .line 143
    const-string v1, "GoogleConversionPing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse referrer from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {p0, v1}, Lcom/google/ads/conversiontracking/a;->a(Landroid/content/Context;Lcom/google/ads/conversiontracking/a$b;)Z

    move-result v0

    .line 147
    if-eqz v0, :cond_2

    .line 148
    const-string v1, "GoogleConversionPing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_2
    const-string v1, "GoogleConversionPing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
