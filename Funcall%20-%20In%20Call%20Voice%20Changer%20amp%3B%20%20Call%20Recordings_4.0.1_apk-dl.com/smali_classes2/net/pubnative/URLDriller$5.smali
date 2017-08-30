.class Lnet/pubnative/URLDriller$5;
.super Ljava/lang/Object;
.source "URLDriller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/URLDriller;->invokeFail(Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/URLDriller;

.field final synthetic val$exception:Ljava/lang/Exception;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/URLDriller;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lnet/pubnative/URLDriller;

    .prologue
    .line 240
    iput-object p1, p0, Lnet/pubnative/URLDriller$5;->this$0:Lnet/pubnative/URLDriller;

    iput-object p2, p0, Lnet/pubnative/URLDriller$5;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lnet/pubnative/URLDriller$5;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lnet/pubnative/URLDriller$5;->this$0:Lnet/pubnative/URLDriller;

    iget-object v0, v0, Lnet/pubnative/URLDriller;->mListener:Lnet/pubnative/URLDriller$Listener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lnet/pubnative/URLDriller$5;->this$0:Lnet/pubnative/URLDriller;

    iget-object v1, v0, Lnet/pubnative/URLDriller;->mListener:Lnet/pubnative/URLDriller$Listener;

    iget-object v0, p0, Lnet/pubnative/URLDriller$5;->val$url:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    iget-object v2, p0, Lnet/pubnative/URLDriller$5;->val$exception:Ljava/lang/Exception;

    invoke-interface {v1, v0, v2}, Lnet/pubnative/URLDriller$Listener;->onURLDrillerFail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lnet/pubnative/URLDriller$5;->this$0:Lnet/pubnative/URLDriller;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/pubnative/URLDriller;->mListener:Lnet/pubnative/URLDriller$Listener;

    .line 249
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lnet/pubnative/URLDriller$5;->val$url:Ljava/lang/String;

    goto :goto_0
.end method
