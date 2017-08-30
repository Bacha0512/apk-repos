.class public Lorg/abtollc/jni/dynamic_factory;
.super Ljava/lang/Object;
.source "dynamic_factory.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lorg/abtollc/jni/pjsuaJNI;->new_dynamic_factory()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/abtollc/jni/dynamic_factory;-><init>(JZ)V

    .line 72
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1
    .param p1, "cPtr"    # J
    .param p3, "cMemoryOwn"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lorg/abtollc/jni/dynamic_factory;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/abtollc/jni/dynamic_factory;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static cArrayUnwrap([Lorg/abtollc/jni/dynamic_factory;)[J
    .locals 4
    .param p0, "arrayWrapper"    # [Lorg/abtollc/jni/dynamic_factory;

    .prologue
    .line 39
    array-length v2, p0

    new-array v0, v2, [J

    .line 40
    .local v0, "cArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 41
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/abtollc/jni/dynamic_factory;->getCPtr(Lorg/abtollc/jni/dynamic_factory;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return-object v0
.end method

.method protected static cArrayWrap([JZ)[Lorg/abtollc/jni/dynamic_factory;
    .locals 6
    .param p0, "cArray"    # [J
    .param p1, "cMemoryOwn"    # Z

    .prologue
    .line 46
    array-length v2, p0

    new-array v0, v2, [Lorg/abtollc/jni/dynamic_factory;

    .line 47
    .local v0, "arrayWrapper":[Lorg/abtollc/jni/dynamic_factory;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 48
    new-instance v2, Lorg/abtollc/jni/dynamic_factory;

    aget-wide v4, p0, v1

    invoke-direct {v2, v4, v5, p1}, Lorg/abtollc/jni/dynamic_factory;-><init>(JZ)V

    aput-object v2, v0, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-object v0
.end method

.method protected static getCPtr(Lorg/abtollc/jni/dynamic_factory;)J
    .locals 2
    .param p0, "obj"    # Lorg/abtollc/jni/dynamic_factory;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/abtollc/jni/dynamic_factory;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/abtollc/jni/dynamic_factory;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/abtollc/jni/dynamic_factory;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/jni/dynamic_factory;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/abtollc/jni/dynamic_factory;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/abtollc/jni/pjsuaJNI;->delete_dynamic_factory(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/abtollc/jni/dynamic_factory;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lorg/abtollc/jni/dynamic_factory;->delete()V

    .line 26
    return-void
.end method

.method public getInit_factory_name()Lorg/abtollc/jni/pj_str_t;
    .locals 4

    .prologue
    .line 66
    iget-wide v2, p0, Lorg/abtollc/jni/dynamic_factory;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/abtollc/jni/pjsuaJNI;->dynamic_factory_init_factory_name_get(JLorg/abtollc/jni/dynamic_factory;)J

    move-result-wide v0

    .line 67
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/abtollc/jni/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/abtollc/jni/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getShared_lib_path()Lorg/abtollc/jni/pj_str_t;
    .locals 4

    .prologue
    .line 57
    iget-wide v2, p0, Lorg/abtollc/jni/dynamic_factory;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/abtollc/jni/pjsuaJNI;->dynamic_factory_shared_lib_path_get(JLorg/abtollc/jni/dynamic_factory;)J

    move-result-wide v0

    .line 58
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/abtollc/jni/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/abtollc/jni/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public setInit_factory_name(Lorg/abtollc/jni/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/abtollc/jni/pj_str_t;

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/abtollc/jni/dynamic_factory;->swigCPtr:J

    invoke-static {p1}, Lorg/abtollc/jni/pj_str_t;->getCPtr(Lorg/abtollc/jni/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/abtollc/jni/pjsuaJNI;->dynamic_factory_init_factory_name_set(JLorg/abtollc/jni/dynamic_factory;JLorg/abtollc/jni/pj_str_t;)V

    .line 63
    return-void
.end method

.method public setShared_lib_path(Lorg/abtollc/jni/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/abtollc/jni/pj_str_t;

    .prologue
    .line 53
    iget-wide v0, p0, Lorg/abtollc/jni/dynamic_factory;->swigCPtr:J

    invoke-static {p1}, Lorg/abtollc/jni/pj_str_t;->getCPtr(Lorg/abtollc/jni/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/abtollc/jni/pjsuaJNI;->dynamic_factory_shared_lib_path_set(JLorg/abtollc/jni/dynamic_factory;JLorg/abtollc/jni/pj_str_t;)V

    .line 54
    return-void
.end method
