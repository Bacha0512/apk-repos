.class public final Lcom/tapjoy/internal/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/bp;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/bq;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/Writer;)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/bq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/tapjoy/internal/bq;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/tapjoy/internal/bq;

    iget-object v0, p0, Lcom/tapjoy/internal/bq;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/tapjoy/internal/bq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/bq;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/bq;->a:Ljava/lang/String;

    return-object v0
.end method
