.class Lcom/github/hiteshsondhi88/libffmpeg/c;
.super Ljava/lang/Object;


# direct methods
.method static a()Lcom/github/hiteshsondhi88/libffmpeg/b;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Build.CPU_ABI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/l;->a(Ljava/lang/Object;)V

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {}, Lcom/github/hiteshsondhi88/libffmpeg/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {}, Lcom/github/hiteshsondhi88/libffmpeg/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/github/hiteshsondhi88/libffmpeg/b;->a:Lcom/github/hiteshsondhi88/libffmpeg/b;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {}, Lcom/github/hiteshsondhi88/libffmpeg/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/github/hiteshsondhi88/libffmpeg/ArmArchHelper;

    invoke-direct {v0}, Lcom/github/hiteshsondhi88/libffmpeg/ArmArchHelper;-><init>()V

    invoke-virtual {v0}, Lcom/github/hiteshsondhi88/libffmpeg/ArmArchHelper;->cpuArchFromJNI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/hiteshsondhi88/libffmpeg/ArmArchHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/github/hiteshsondhi88/libffmpeg/b;->b:Lcom/github/hiteshsondhi88/libffmpeg/b;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {}, Lcom/github/hiteshsondhi88/libffmpeg/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/github/hiteshsondhi88/libffmpeg/b;->b:Lcom/github/hiteshsondhi88/libffmpeg/b;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/github/hiteshsondhi88/libffmpeg/b;->c:Lcom/github/hiteshsondhi88/libffmpeg/b;

    goto :goto_0
.end method

.method static b()Ljava/lang/String;
    .locals 1

    const-string v0, "x86"

    return-object v0
.end method

.method static c()Ljava/lang/String;
    .locals 1

    const-string v0, "x86_64"

    return-object v0
.end method

.method static d()Ljava/lang/String;
    .locals 1

    const-string v0, "arm64-v8a"

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    const-string v0, "armeabi-v7a"

    return-object v0
.end method
