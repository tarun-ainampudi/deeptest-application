.class Lcom/example/deeptesting/activity/OpenSourceNoticeActivity$2;
.super Ljava/lang/Object;
.source "OpenSourceNoticeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;

    .line 58
    iput-object p1, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity$2;->this$0:Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 61
    iget-object v0, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity$2;->this$0:Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->access$000(Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    move-result v0

    .line 62
    .local v0, "appBarLayoutHeight":I
    iget-object v1, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity$2;->this$0:Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;

    invoke-static {v1}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->access$100(Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    iget-object v2, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity$2;->this$0:Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;

    invoke-static {v2}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->access$100(Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity$2;->this$0:Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;

    .line 63
    invoke-static {v3}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->access$100(Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity$2;->this$0:Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;

    invoke-static {v4}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->access$100(Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v4

    .line 62
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 67
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity$2;->this$0:Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;

    invoke-virtual {v5}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "notice"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 68
    const-string v3, ""

    .line 69
    .local v3, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_0

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    nop

    .line 78
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    :goto_1
    goto :goto_2

    .line 79
    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 76
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 73
    :catch_1
    move-exception v3

    .line 74
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 78
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 84
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity$2;->this$0:Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;

    iget-object v4, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity$2;->this$0:Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;

    const v5, 0x7f0901d1

    invoke-virtual {v4, v5}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->access$202(Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 85
    iget-object v3, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity$2;->this$0:Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;

    invoke-static {v3}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->access$200(Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void

    .line 76
    :goto_3
    if-eqz v2, :cond_2

    .line 78
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 81
    goto :goto_4

    .line 79
    :catch_2
    move-exception v4

    .line 80
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v3
.end method
