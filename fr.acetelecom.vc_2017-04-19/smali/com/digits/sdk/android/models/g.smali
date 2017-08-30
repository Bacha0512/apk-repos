.class public Lcom/digits/sdk/android/models/g;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/List;
    .annotation runtime Lcom/google/a/a/c;
        a = "invites"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/digits/sdk/android/models/Invite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/digits/sdk/android/models/Invite;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/models/g;->a:Ljava/util/List;

    return-void
.end method
