.class final Lcom/tapjoy/internal/fo$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/tapjoy/internal/fw;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.senderIds"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p1}, Lcom/tapjoy/internal/fw;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.appVersion"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z

    return-void
.end method

.method public final a(Landroid/content/Context;J)V
    .locals 2

    invoke-static {p1}, Lcom/tapjoy/internal/fw;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.onServerExpirationTime"

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/tapjoy/internal/fw;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.senderIds"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {p1}, Lcom/tapjoy/internal/fw;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.stale"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    return-void
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/tapjoy/internal/fw;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.regId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p1}, Lcom/tapjoy/internal/fw;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.backoff"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/tapjoy/internal/fw;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.regId"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final b(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p1}, Lcom/tapjoy/internal/fw;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/fw;->a(Z)V

    return-void
.end method

.method public final c(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Lcom/tapjoy/internal/fw;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.stale"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d(Landroid/content/Context;)I
    .locals 3

    invoke-static {p1}, Lcom/tapjoy/internal/fw;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.appVersion"

    const/high16 v2, -0x80000000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final e(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Lcom/tapjoy/internal/fw;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.onServer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final f(Landroid/content/Context;)J
    .locals 4

    invoke-static {p1}, Lcom/tapjoy/internal/fw;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.onServerExpirationTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(Landroid/content/Context;)I
    .locals 3

    invoke-static {p1}, Lcom/tapjoy/internal/fw;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.backoff"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
