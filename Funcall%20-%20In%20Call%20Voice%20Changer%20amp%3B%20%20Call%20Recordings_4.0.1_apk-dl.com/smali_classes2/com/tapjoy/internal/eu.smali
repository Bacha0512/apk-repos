.class public final Lcom/tapjoy/internal/eu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/tapjoy/internal/eu;

.field private static c:Lcom/tapjoy/internal/eu;


# instance fields
.field public final a:Lcom/tapjoy/internal/es;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/tapjoy/internal/eu;

    invoke-direct {v0}, Lcom/tapjoy/internal/eu;-><init>()V

    .line 28
    sput-object v0, Lcom/tapjoy/internal/eu;->b:Lcom/tapjoy/internal/eu;

    sput-object v0, Lcom/tapjoy/internal/eu;->c:Lcom/tapjoy/internal/eu;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/tapjoy/internal/es;

    invoke-direct {v0}, Lcom/tapjoy/internal/es;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/eu;->a:Lcom/tapjoy/internal/es;

    .line 67
    return-void
.end method

.method public static a()Lcom/tapjoy/internal/eu;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/tapjoy/internal/eu;->c:Lcom/tapjoy/internal/eu;

    return-object v0
.end method

.method public static b()Lcom/tapjoy/internal/es;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/tapjoy/internal/eu;->c:Lcom/tapjoy/internal/eu;

    iget-object v0, v0, Lcom/tapjoy/internal/eu;->a:Lcom/tapjoy/internal/es;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 70
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/eu;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 71
    iput-object p1, p0, Lcom/tapjoy/internal/eu;->d:Landroid/content/Context;

    .line 1082
    invoke-virtual {p0}, Lcom/tapjoy/internal/eu;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1083
    invoke-virtual {p0}, Lcom/tapjoy/internal/eu;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "configurations"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1085
    if-eqz v1, :cond_0

    .line 1088
    :try_start_1
    invoke-static {v1}, Lcom/tapjoy/internal/br;->b(Ljava/lang/String;)Lcom/tapjoy/internal/br;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1090
    :try_start_2
    invoke-virtual {v1}, Lcom/tapjoy/internal/br;->d()Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 1092
    :try_start_3
    invoke-virtual {v1}, Lcom/tapjoy/internal/br;->close()V

    .line 1095
    iget-object v1, p0, Lcom/tapjoy/internal/eu;->a:Lcom/tapjoy/internal/es;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/es;->a(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1101
    :cond_0
    :goto_0
    :try_start_4
    new-instance v0, Lcom/tapjoy/internal/eu$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/eu$1;-><init>(Lcom/tapjoy/internal/eu;)V

    .line 1109
    iget-object v1, p0, Lcom/tapjoy/internal/eu;->a:Lcom/tapjoy/internal/es;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/es;->addObserver(Ljava/util/Observer;)V

    .line 1110
    iget-object v1, p0, Lcom/tapjoy/internal/eu;->a:Lcom/tapjoy/internal/es;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 75
    :cond_1
    monitor-exit p0

    return-void

    .line 1092
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Lcom/tapjoy/internal/br;->close()V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1097
    :catch_0
    move-exception v1

    :try_start_6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "configurations"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 70
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tapjoy/internal/eu;->d:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
