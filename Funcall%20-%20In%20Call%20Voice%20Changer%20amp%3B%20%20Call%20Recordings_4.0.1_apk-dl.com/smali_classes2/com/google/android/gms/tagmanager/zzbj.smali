.class final Lcom/google/android/gms/tagmanager/zzbj;
.super Lcom/google/android/gms/tagmanager/zzcf;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcf;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzbf;->zzBg()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/tagmanager/CustomTagProvider;

    invoke-static {p1, v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzc(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/CustomTagProvider;

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzbf;->zzBg()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/google/android/gms/tagmanager/CustomTagProvider;->execute(Ljava/util/Map;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzbf;->zzBg()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/CustomTagProvider;

    goto :goto_0
.end method

.method public final zzf(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzbf;->zzym()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/tagmanager/CustomVariableProvider;

    invoke-static {p1, v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzc(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/CustomVariableProvider;

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzbf;->zzym()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lcom/google/android/gms/tagmanager/CustomVariableProvider;->getValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzbf;->zzym()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/CustomVariableProvider;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
