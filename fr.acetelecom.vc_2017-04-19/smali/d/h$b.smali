.class final Ld/h$b;
.super Lb/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lb/u;

.field private final b:J


# direct methods
.method constructor <init>(Lb/u;J)V
    .locals 0

    invoke-direct {p0}, Lb/ac;-><init>()V

    iput-object p1, p0, Ld/h$b;->a:Lb/u;

    iput-wide p2, p0, Ld/h$b;->b:J

    return-void
.end method


# virtual methods
.method public a()Lb/u;
    .locals 1

    iget-object v0, p0, Ld/h$b;->a:Lb/u;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Ld/h$b;->b:J

    return-wide v0
.end method

.method public d()Lc/e;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
