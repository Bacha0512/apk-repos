.class public final Lcom/google/android/gms/internal/zzapv;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Lcom/google/android/gms/appindexing/Action;JLjava/lang/String;I)Lcom/google/android/gms/internal/zzapl;
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/appindexing/Action;->zzmn()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v0, "object"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p3, v4}, Lcom/google/android/gms/internal/zzapw;->zza(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4, v5, v0, v6, v1}, Lcom/google/android/gms/internal/zzapl;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/internal/zzaox;

    move-result-object v1

    const-string v0, ".private:ssbContext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".private:ssbContext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapb;->zzd([B)Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaox;->zza(Lcom/google/android/gms/internal/zzapb;)Lcom/google/android/gms/internal/zzaox;

    const-string v0, ".private:ssbContext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    const-string v0, ".private:accountName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ".private:accountName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/accounts/Account;

    const-string v6, "com.google"

    invoke-direct {v5, v0, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/zzaox;->zzb(Landroid/accounts/Account;)Lcom/google/android/gms/internal/zzaox;

    const-string v0, ".private:accountName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    const-string v0, ".private:isContextOnly"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ".private:isContextOnly"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    const-string v5, ".private:isContextOnly"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_1
    const-string v5, ".private:isDeviceOnly"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ".private:isDeviceOnly"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, ".private:isDeviceOnly"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    const-string v5, ".private:action"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzapv;->zzh(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzcbc;

    move-result-object v3

    new-instance v6, Lcom/google/android/gms/internal/zzapj;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/zzapj;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzapj;->zzK(Z)Lcom/google/android/gms/internal/zzapj;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/zzapj;->zzbJ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzapj;

    move-result-object v5

    const-string v6, "blob"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzapj;->zzbI(Ljava/lang/String;)Lcom/google/android/gms/internal/zzapj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzapj;->zzml()Lcom/google/android/gms/internal/zzapi;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/zzapb;

    invoke-static {v3}, Lcom/google/android/gms/internal/adp;->zzc(Lcom/google/android/gms/internal/adp;)[B

    move-result-object v3

    invoke-direct {v6, v3, v5}, Lcom/google/android/gms/internal/zzapb;-><init>([BLcom/google/android/gms/internal/zzapi;)V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/zzaox;->zza(Lcom/google/android/gms/internal/zzapb;)Lcom/google/android/gms/internal/zzaox;

    new-instance v3, Lcom/google/android/gms/internal/zzapm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzapm;-><init>()V

    invoke-static {p3, v4}, Lcom/google/android/gms/internal/zzapl;->zza(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/internal/zzaoz;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzapm;->zza(Lcom/google/android/gms/internal/zzaoz;)Lcom/google/android/gms/internal/zzapm;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/zzapm;->zzv(J)Lcom/google/android/gms/internal/zzapm;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzapm;->zzS(I)Lcom/google/android/gms/internal/zzapm;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaox;->zzmj()Lcom/google/android/gms/internal/zzaow;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapm;->zza(Lcom/google/android/gms/internal/zzaow;)Lcom/google/android/gms/internal/zzapm;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzapm;->zzM(Z)Lcom/google/android/gms/internal/zzapm;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/zzapm;->zzT(I)Lcom/google/android/gms/internal/zzapm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapm;->zzmm()Lcom/google/android/gms/internal/zzapl;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private static zzb(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzcbb;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzcbb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcbb;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/zzcbb;->name:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzcbd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcbd;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcbb;->zzbgu:Lcom/google/android/gms/internal/zzcbd;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcbb;->zzbgu:Lcom/google/android/gms/internal/zzcbd;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzapv;->zzh(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzcbc;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzcbd;->zzbgz:Lcom/google/android/gms/internal/zzcbc;

    return-object v0
.end method

.method private static zzh(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzcbc;
    .locals 8

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzapv;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcbb;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzapv;->zzb(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzcbb;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_4

    check-cast v1, [Ljava/lang/String;

    array-length v6, v1

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_0

    aget-object v7, v1, v2

    if-eqz v7, :cond_3

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/zzapv;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcbb;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    instance-of v2, v1, [Landroid/os/Bundle;

    if-eqz v2, :cond_6

    check-cast v1, [Landroid/os/Bundle;

    array-length v6, v1

    move v2, v3

    :goto_2
    if-ge v2, v6, :cond_0

    aget-object v7, v1, v2

    if-eqz v7, :cond_5

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/zzapv;->zzb(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzcbb;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v2, Lcom/google/android/gms/internal/zzcbb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzcbb;-><init>()V

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcbb;->name:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzcbd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcbd;-><init>()V

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcbb;->zzbgu:Lcom/google/android/gms/internal/zzcbd;

    iget-object v0, v2, Lcom/google/android/gms/internal/zzcbb;->zzbgu:Lcom/google/android/gms/internal/zzcbd;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzcbd;->zzbgw:Z

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string v0, "SearchIndex"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported value: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    new-instance v1, Lcom/google/android/gms/internal/zzcbc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcbc;-><init>()V

    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzcbc;->type:Ljava/lang/String;

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzcbb;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzcbb;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzcbc;->zzbgv:[Lcom/google/android/gms/internal/zzcbb;

    return-object v1
.end method

.method private static zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcbb;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzcbb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcbb;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/zzcbb;->name:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzcbd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcbd;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcbb;->zzbgu:Lcom/google/android/gms/internal/zzcbd;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcbb;->zzbgu:Lcom/google/android/gms/internal/zzcbd;

    iput-object p1, v1, Lcom/google/android/gms/internal/zzcbd;->zzaIF:Ljava/lang/String;

    return-object v0
.end method
