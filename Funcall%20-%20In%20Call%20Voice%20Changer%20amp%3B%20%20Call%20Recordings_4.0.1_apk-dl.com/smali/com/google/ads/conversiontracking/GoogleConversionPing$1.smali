.class final Lcom/google/ads/conversiontracking/GoogleConversionPing$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/conversiontracking/GoogleConversionPing;->a(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/conversiontracking/a$c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/ads/conversiontracking/a$c;

.field final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/google/ads/conversiontracking/a$c;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/ads/conversiontracking/GoogleConversionPing$1;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/ads/conversiontracking/GoogleConversionPing$1;->b:Z

    iput-object p3, p0, Lcom/google/ads/conversiontracking/GoogleConversionPing$1;->c:Lcom/google/ads/conversiontracking/a$c;

    iput-object p4, p0, Lcom/google/ads/conversiontracking/GoogleConversionPing$1;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 163
    :try_start_0
    const-string v0, "GoogleConversionPing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pinging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/conversiontracking/GoogleConversionPing$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/ads/conversiontracking/GoogleConversionPing$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 169
    const-string v2, "GoogleConversionPing"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ping responded with response code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-boolean v2, p0, Lcom/google/ads/conversiontracking/GoogleConversionPing$1;->b:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/ads/conversiontracking/GoogleConversionPing$1;->c:Lcom/google/ads/conversiontracking/a$c;

    if-eqz v2, :cond_0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 171
    iget-object v1, p0, Lcom/google/ads/conversiontracking/GoogleConversionPing$1;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/ads/conversiontracking/GoogleConversionPing$1;->c:Lcom/google/ads/conversiontracking/a$c;

    invoke-static {v1, v2}, Lcom/google/ads/conversiontracking/a;->a(Landroid/content/Context;Lcom/google/ads/conversiontracking/a$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 179
    :goto_0
    return-void

    .line 174
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v1, "GoogleConversionPing"

    const-string v2, "Error sending ping"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
