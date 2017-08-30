.class public Lorg/webrtc/videoengine/ViERenderer;
.super Ljava/lang/Object;
.source "ViERenderer.java"


# static fields
.field private static g_localRenderer:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateLocalRenderer(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "localRender":Landroid/view/SurfaceView;
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    sput-object v1, Lorg/webrtc/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 52
    sget-object v1, Lorg/webrtc/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 53
    const-string v1, "VIERenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localRenderer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/webrtc/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-object v0
.end method

.method public static CreateRenderer(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/webrtc/videoengine/ViERenderer;->CreateRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;

    move-result-object v0

    return-object v0
.end method

.method public static CreateRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useOpenGLES2"    # Z

    .prologue
    .line 30
    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->IsSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lorg/webrtc/videoengine/ViEAndroidGLES20;

    invoke-direct {v0, p0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;-><init>(Landroid/content/Context;)V

    .line 33
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static GetLocalRenderer()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    return-object v0
.end method
