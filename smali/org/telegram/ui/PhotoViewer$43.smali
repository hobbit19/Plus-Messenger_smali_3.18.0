.class Lorg/telegram/ui/PhotoViewer$43;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 2953
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$43;->val$mode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 20
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2956
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lorg/telegram/ui/PhotoViewer;->access$11902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2957
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$2200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 2958
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$4400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2959
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$11500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2961
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v12

    if-nez v12, :cond_1

    .line 2962
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 2964
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$11600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2965
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2966
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 2967
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v12

    const/4 v15, 0x1

    if-eq v12, v15, :cond_4

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v13, v2, v14, v12}, Lorg/telegram/ui/Components/PhotoCropView;->setBitmap(Landroid/graphics/Bitmap;IZ)V

    .line 2968
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v4

    .line 2969
    .local v4, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v3

    .line 2971
    .local v3, "bitmapHeight":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v4

    div-float v10, v12, v13

    .line 2972
    .local v10, "scaleX":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v3

    div-float v11, v12, v13

    .line 2973
    .local v11, "scaleY":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lorg/telegram/ui/PhotoViewer;->access$12000(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v4

    div-float v7, v12, v13

    .line 2974
    .local v7, "newScaleX":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lorg/telegram/ui/PhotoViewer;->access$12100(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v3

    div-float v8, v12, v13

    .line 2975
    .local v8, "newScaleY":F
    cmpl-float v12, v10, v11

    if-lez v12, :cond_5

    move v9, v11

    .line 2976
    .local v9, "scale":F
    :goto_1
    cmpl-float v12, v7, v8

    if-lez v12, :cond_6

    move v6, v8

    .line 2977
    .local v6, "newScale":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 2978
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lorg/telegram/ui/PhotoViewer;->access$12000(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lorg/telegram/ui/PhotoViewer;->access$12100(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v5, v12

    .line 2979
    .local v5, "minSide":F
    int-to-float v12, v4

    div-float v7, v5, v12

    .line 2980
    int-to-float v12, v3

    div-float v8, v5, v12

    .line 2981
    cmpl-float v12, v7, v8

    if-lez v12, :cond_7

    move v6, v7

    .line 2984
    .end local v5    # "minSide":F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    div-float v13, v6, v9

    invoke-static {v12, v13}, Lorg/telegram/ui/PhotoViewer;->access$11102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 2985
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lorg/telegram/ui/PhotoViewer;->access$11202(Lorg/telegram/ui/PhotoViewer;F)F

    .line 2986
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v12, 0x42600000    # 56.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    neg-int v14, v12

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v12, v15, :cond_8

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/lit8 v12, v12, 0x2

    :goto_4
    add-int/2addr v12, v14

    int-to-float v12, v12

    invoke-static {v13, v12}, Lorg/telegram/ui/PhotoViewer;->access$11302(Lorg/telegram/ui/PhotoViewer;F)F

    .line 2987
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lorg/telegram/ui/PhotoViewer;->access$12202(Lorg/telegram/ui/PhotoViewer;J)J

    .line 2988
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lorg/telegram/ui/PhotoViewer;->access$12302(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 2991
    .end local v3    # "bitmapHeight":I
    .end local v4    # "bitmapWidth":I
    .end local v6    # "newScale":F
    .end local v7    # "newScaleX":F
    .end local v8    # "newScaleY":F
    .end local v9    # "scale":F
    .end local v10    # "scaleX":F
    .end local v11    # "scaleY":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v12, v13}, Lorg/telegram/ui/PhotoViewer;->access$10902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2992
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$10900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v12

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 2993
    invoke-static {v15}, Lorg/telegram/ui/PhotoViewer;->access$10600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v15

    const-string/jumbo v16, "translationY"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x42400000    # 48.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-string/jumbo v16, "animationValue"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    .line 2994
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 2995
    invoke-static {v15}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v15

    const-string/jumbo v16, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    .line 2992
    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2997
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$10900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v12

    const-wide/16 v14, 0xc8

    invoke-virtual {v12, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2998
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$10900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/PhotoViewer$43$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/PhotoViewer$43$1;-><init>(Lorg/telegram/ui/PhotoViewer$43;)V

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3019
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$10900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v12

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 3020
    return-void

    .line 2967
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .restart local v3    # "bitmapHeight":I
    .restart local v4    # "bitmapWidth":I
    .restart local v7    # "newScaleX":F
    .restart local v8    # "newScaleY":F
    .restart local v10    # "scaleX":F
    .restart local v11    # "scaleY":F
    :cond_5
    move v9, v10

    .line 2975
    goto/16 :goto_1

    .restart local v9    # "scale":F
    :cond_6
    move v6, v7

    .line 2976
    goto/16 :goto_2

    .restart local v5    # "minSide":F
    .restart local v6    # "newScale":F
    :cond_7
    move v6, v8

    .line 2981
    goto/16 :goto_3

    .line 2986
    .end local v5    # "minSide":F
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 2993
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2995
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
