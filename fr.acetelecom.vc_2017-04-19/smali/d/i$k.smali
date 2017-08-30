.class final Ld/i$k;
.super Ld/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/i",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/i;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ld/k;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1, p2}, Ld/k;->a(Ljava/lang/Object;)V

    return-void
.end method
