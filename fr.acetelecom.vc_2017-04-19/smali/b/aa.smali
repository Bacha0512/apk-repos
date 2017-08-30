.class public abstract Lb/aa;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lb/u;Lc/f;)Lb/aa;
    .locals 1

    new-instance v0, Lb/aa$1;

    invoke-direct {v0, p0, p1}, Lb/aa$1;-><init>(Lb/u;Lc/f;)V

    return-object v0
.end method

.method public static a(Lb/u;[B)Lb/aa;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lb/aa;->a(Lb/u;[BII)Lb/aa;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lb/u;[BII)Lb/aa;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lb/a/i;->a(JJJ)V

    new-instance v0, Lb/aa$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lb/aa$2;-><init>(Lb/u;I[BI)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lc/d;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()Lb/u;
.end method

.method public c()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method
