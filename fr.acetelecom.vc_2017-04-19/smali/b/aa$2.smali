.class final Lb/aa$2;
.super Lb/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/aa;->a(Lb/u;[BII)Lb/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/u;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lb/u;I[BI)V
    .locals 0

    iput-object p1, p0, Lb/aa$2;->a:Lb/u;

    iput p2, p0, Lb/aa$2;->b:I

    iput-object p3, p0, Lb/aa$2;->c:[B

    iput p4, p0, Lb/aa$2;->d:I

    invoke-direct {p0}, Lb/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/aa$2;->c:[B

    iget v1, p0, Lb/aa$2;->d:I

    iget v2, p0, Lb/aa$2;->b:I

    invoke-interface {p1, v0, v1, v2}, Lc/d;->c([BII)Lc/d;

    return-void
.end method

.method public b()Lb/u;
    .locals 1

    iget-object v0, p0, Lb/aa$2;->a:Lb/u;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget v0, p0, Lb/aa$2;->b:I

    int-to-long v0, v0

    return-wide v0
.end method
