.class Lcom/digits/sdk/android/az;
.super Ljava/lang/Object;

# interfaces
.implements Lb/t;


# instance fields
.field private final a:Lcom/digits/sdk/android/ay;


# direct methods
.method public constructor <init>(Lcom/digits/sdk/android/ay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/az;->a:Lcom/digits/sdk/android/ay;

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

    invoke-virtual {v0}, Lb/z;->e()Lb/z$a;

    move-result-object v0

    const-string v1, "user-agent"

    iget-object v2, p0, Lcom/digits/sdk/android/az;->a:Lcom/digits/sdk/android/ay;

    invoke-virtual {v2}, Lcom/digits/sdk/android/ay;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/z$a;->a()Lb/z;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/t$a;->a(Lb/z;)Lb/ab;

    move-result-object v0

    return-object v0
.end method
