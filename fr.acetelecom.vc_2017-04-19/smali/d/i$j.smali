.class final Ld/i$j;
.super Ld/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/i",
        "<",
        "Lb/v$b;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ld/i$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/i$j;

    invoke-direct {v0}, Ld/i$j;-><init>()V

    sput-object v0, Ld/i$j;->a:Ld/i$j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/i;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ld/k;Lb/v$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ld/k;->a(Lb/v$b;)V

    :cond_0
    return-void
.end method

.method bridge synthetic a(Ld/k;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lb/v$b;

    invoke-virtual {p0, p1, p2}, Ld/i$j;->a(Ld/k;Lb/v$b;)V

    return-void
.end method
