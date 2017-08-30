.class public Lfr/acetelecom/vc/jni/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lfr/acetelecom/vc/jni/wrapperJNI;->new_SoundStretch()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lfr/acetelecom/vc/jni/a;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lfr/acetelecom/vc/jni/a;->a:Z

    iput-wide p1, p0, Lfr/acetelecom/vc/jni/a;->b:J

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lfr/acetelecom/vc/jni/a;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lfr/acetelecom/vc/jni/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/acetelecom/vc/jni/a;->a:Z

    iget-wide v0, p0, Lfr/acetelecom/vc/jni/a;->b:J

    invoke-static {v0, v1}, Lfr/acetelecom/vc/jni/wrapperJNI;->delete_SoundStretch(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/acetelecom/vc/jni/a;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;FFF)V
    .locals 8

    iget-wide v0, p0, Lfr/acetelecom/vc/jni/a;->b:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lfr/acetelecom/vc/jni/wrapperJNI;->SoundStretch_process(JLfr/acetelecom/vc/jni/a;Ljava/lang/String;Ljava/lang/String;FFF)V

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lfr/acetelecom/vc/jni/a;->a()V

    return-void
.end method
