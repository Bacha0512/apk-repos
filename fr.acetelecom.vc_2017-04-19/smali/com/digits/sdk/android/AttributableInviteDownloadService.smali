.class public Lcom/digits/sdk/android/AttributableInviteDownloadService;
.super Landroid/app/IntentService;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# instance fields
.field private c:Lcom/digits/sdk/android/aj;

.field private d:Lcom/digits/sdk/android/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Digits"

    sput-object v0, Lcom/digits/sdk/android/AttributableInviteDownloadService;->a:Ljava/lang/String;

    const-string v0, "ATTRIBUTABLE_INVITE_DOWNLOAD_WORKER"

    sput-object v0, Lcom/digits/sdk/android/AttributableInviteDownloadService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->k()Lcom/digits/sdk/android/aj;

    move-result-object v0

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/ac;->o()Lcom/digits/sdk/android/ar;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/digits/sdk/android/AttributableInviteDownloadService;-><init>(Lcom/digits/sdk/android/aj;Lcom/digits/sdk/android/ar;)V

    return-void
.end method

.method constructor <init>(Lcom/digits/sdk/android/aj;Lcom/digits/sdk/android/ar;)V
    .locals 1

    sget-object v0, Lcom/digits/sdk/android/AttributableInviteDownloadService;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/digits/sdk/android/AttributableInviteDownloadService;->c:Lcom/digits/sdk/android/aj;

    iput-object p2, p0, Lcom/digits/sdk/android/AttributableInviteDownloadService;->d:Lcom/digits/sdk/android/ar;

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/digits/sdk/android/AttributableInviteDownloadService;->c:Lcom/digits/sdk/android/aj;

    invoke-virtual {v0}, Lcom/digits/sdk/android/aj;->a()Lcom/digits/sdk/android/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ai;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/UserAuthApiInterface;

    invoke-interface {v0}, Lcom/digits/sdk/android/UserAuthApiInterface;->joinNotify()Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v1

    invoke-virtual {v1}, Ld/l;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/models/g;

    iget-object v0, v0, Lcom/digits/sdk/android/models/g;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/models/g;

    iget-object v0, v0, Lcom/digits/sdk/android/models/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/digits/sdk/android/AttributableInviteDownloadService;->d:Lcom/digits/sdk/android/ar;

    new-instance v2, Lcom/digits/sdk/android/a/k;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/digits/sdk/android/a/k;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/ar;->a(Lcom/digits/sdk/android/a/k;)V

    :cond_0
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    sget-object v2, Lcom/digits/sdk/android/AttributableInviteDownloadService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total attributable invites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/twitter/sdk/android/core/m;

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/m;-><init>(Ld/l;)V

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    sget-object v2, Lcom/digits/sdk/android/AttributableInviteDownloadService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attributable invite download failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    sget-object v2, Lcom/digits/sdk/android/AttributableInviteDownloadService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attributable invite download failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
