.class Lcom/digits/sdk/android/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/digits/sdk/android/u;

.field private final b:Lcom/digits/sdk/android/aj;

.field private final c:Lcom/digits/sdk/android/ac;

.field private final d:Lcom/digits/sdk/android/ar;

.field private e:Lcom/digits/sdk/android/b;

.field private f:Lcom/digits/sdk/android/cc;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/ac;Lcom/digits/sdk/android/aj;Lcom/digits/sdk/android/u;Lcom/digits/sdk/android/b;Lcom/digits/sdk/android/cc;Lcom/digits/sdk/android/ar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/q;->c:Lcom/digits/sdk/android/ac;

    iput-object p2, p0, Lcom/digits/sdk/android/q;->b:Lcom/digits/sdk/android/aj;

    iput-object p3, p0, Lcom/digits/sdk/android/q;->a:Lcom/digits/sdk/android/u;

    iput-object p4, p0, Lcom/digits/sdk/android/q;->e:Lcom/digits/sdk/android/b;

    iput-object p5, p0, Lcom/digits/sdk/android/q;->f:Lcom/digits/sdk/android/cc;

    iput-object p6, p0, Lcom/digits/sdk/android/q;->d:Lcom/digits/sdk/android/ar;

    return-void
.end method

.method constructor <init>(Lcom/digits/sdk/android/aj;)V
    .locals 7

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v1

    new-instance v3, Lcom/digits/sdk/android/u;

    invoke-direct {v3}, Lcom/digits/sdk/android/u;-><init>()V

    new-instance v4, Lcom/digits/sdk/android/b;

    invoke-direct {v4}, Lcom/digits/sdk/android/b;-><init>()V

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->e()Lcom/digits/sdk/android/cc;

    move-result-object v5

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->o()Lcom/digits/sdk/android/ar;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/digits/sdk/android/q;-><init>(Lcom/digits/sdk/android/ac;Lcom/digits/sdk/android/aj;Lcom/digits/sdk/android/u;Lcom/digits/sdk/android/b;Lcom/digits/sdk/android/cc;Lcom/digits/sdk/android/ar;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/digits/sdk/android/UserAuthApiInterface;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/q;->b:Lcom/digits/sdk/android/aj;

    invoke-virtual {v0}, Lcom/digits/sdk/android/aj;->a()Lcom/digits/sdk/android/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ai;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/UserAuthApiInterface;

    return-object v0
.end method

.method a(Lcom/twitter/sdk/android/core/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/digits/sdk/android/models/g;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/digits/sdk/android/q;->a()Lcom/digits/sdk/android/UserAuthApiInterface;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/digits/sdk/android/UserAuthApiInterface;->getInvites(ZZ)Ld/b;

    move-result-object v0

    invoke-interface {v0, p1}, Ld/b;->a(Ld/d;)V

    return-void
.end method

.method a([Ljava/lang/String;Lcom/twitter/sdk/android/core/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/digits/sdk/android/q;->a()Lcom/digits/sdk/android/UserAuthApiInterface;

    move-result-object v0

    new-instance v1, Lcom/digits/sdk/android/models/c;

    invoke-direct {v1, p1}, Lcom/digits/sdk/android/models/c;-><init>([Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/digits/sdk/android/UserAuthApiInterface;->recordInvite(Lcom/digits/sdk/android/models/c;)Ld/b;

    move-result-object v0

    invoke-interface {v0, p2}, Ld/b;->a(Ld/d;)V

    return-void
.end method
