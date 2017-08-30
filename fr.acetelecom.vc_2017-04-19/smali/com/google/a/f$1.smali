.class Lcom/google/a/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/f;


# direct methods
.method constructor <init>(Lcom/google/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/f$1;->a:Lcom/google/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/a/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/l;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/f$1;->a:Lcom/google/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/f;->a(Lcom/google/a/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
