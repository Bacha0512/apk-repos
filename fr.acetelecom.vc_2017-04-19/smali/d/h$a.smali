.class final Ld/h$a;
.super Lb/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Ljava/io/IOException;

.field private final b:Lb/ac;


# direct methods
.method constructor <init>(Lb/ac;)V
    .locals 0

    invoke-direct {p0}, Lb/ac;-><init>()V

    iput-object p1, p0, Ld/h$a;->b:Lb/ac;

    return-void
.end method


# virtual methods
.method public a()Lb/u;
    .locals 1

    iget-object v0, p0, Ld/h$a;->b:Lb/ac;

    invoke-virtual {v0}, Lb/ac;->a()Lb/u;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Ld/h$a;->b:Lb/ac;

    invoke-virtual {v0}, Lb/ac;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Ld/h$a;->b:Lb/ac;

    invoke-virtual {v0}, Lb/ac;->close()V

    return-void
.end method

.method public d()Lc/e;
    .locals 2

    new-instance v0, Ld/h$a$1;

    iget-object v1, p0, Ld/h$a;->b:Lb/ac;

    invoke-virtual {v1}, Lb/ac;->d()Lc/e;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ld/h$a$1;-><init>(Ld/h$a;Lc/r;)V

    invoke-static {v0}, Lc/l;->a(Lc/r;)Lc/e;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ld/h$a;->a:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/h$a;->a:Ljava/io/IOException;

    throw v0

    :cond_0
    return-void
.end method
