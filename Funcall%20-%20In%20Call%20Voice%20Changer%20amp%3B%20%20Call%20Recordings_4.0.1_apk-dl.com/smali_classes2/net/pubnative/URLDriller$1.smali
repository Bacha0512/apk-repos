.class Lnet/pubnative/URLDriller$1;
.super Ljava/lang/Object;
.source "URLDriller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/URLDriller;->drill(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/URLDriller;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/URLDriller;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/pubnative/URLDriller;

    .prologue
    .line 99
    iput-object p1, p0, Lnet/pubnative/URLDriller$1;->this$0:Lnet/pubnative/URLDriller;

    iput-object p2, p0, Lnet/pubnative/URLDriller$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lnet/pubnative/URLDriller$1;->this$0:Lnet/pubnative/URLDriller;

    iget-object v1, p0, Lnet/pubnative/URLDriller$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/URLDriller;->invokeStart(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lnet/pubnative/URLDriller$1;->this$0:Lnet/pubnative/URLDriller;

    iget-object v1, p0, Lnet/pubnative/URLDriller$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/URLDriller;->doDrill(Ljava/lang/String;)V

    .line 106
    return-void
.end method
