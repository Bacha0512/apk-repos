.class public Lcom/twitter/sdk/android/core/internal/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/t$a;)Lb/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lb/t$a;->a()Lb/z;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/t$a;->a(Lb/z;)Lb/ab;

    move-result-object v0

    invoke-virtual {v0}, Lb/ab;->b()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lb/ab;->g()Lb/ab$a;

    move-result-object v0

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lb/ab$a;->a(I)Lb/ab$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/ab$a;->a()Lb/ab;

    move-result-object v0

    :cond_0
    return-object v0
.end method
